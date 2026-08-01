#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from byron device
$(call inherit-product, device/xiaomi/byron/device.mk)

PRODUCT_DEVICE := byron
PRODUCT_NAME := omni_byron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2605EPN8EC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_byron-user 16 BQ2A.250705.001-BP2A.250605.031.A3 OS3.0.307.0.WAFCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/byron/byron:16/BQ2A.250705.001-BP2A.250605.031.A3/OS3.0.307.0.WAFCNXM:user/release-keys
