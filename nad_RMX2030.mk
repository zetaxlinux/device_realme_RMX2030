#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

NAD_VERSION_BASE := EOL
NAD_BUILD_CODENAME := FINAL
NAD_BUILD_TYPE := UNOFFICIAL
NAD_OTA_BRANCH := 10
TARGET_BOOT_ANIMATION_RES := 720

# Inherit from RMX2030 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX2030
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := nad_RMX2030
PRODUCT_MODEL := Realme 5i

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := RMX2030
TARGET_VENDOR_DEVICE_NAME := RMX2030

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2030" \
    PRIVATE_BUILD_DESC="unknown-user 10 QKQ1.200209.002 unknown release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ2A.210505.002/7246365:user/release-keys
