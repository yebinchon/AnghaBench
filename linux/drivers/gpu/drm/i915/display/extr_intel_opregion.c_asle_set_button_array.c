
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ASLC_BUTTON_ARRAY_FAILED ;
 int ASLE_IUER_POWER_BTN ;
 int ASLE_IUER_ROTATION_LOCK_BTN ;
 int ASLE_IUER_VOLUME_DOWN_BTN ;
 int ASLE_IUER_VOLUME_UP_BTN ;
 int ASLE_IUER_WINDOWS_BTN ;
 int DRM_DEBUG_DRIVER (char*) ;

__attribute__((used)) static u32 asle_set_button_array(struct drm_i915_private *dev_priv, u32 iuer)
{
 if (!iuer)
  DRM_DEBUG_DRIVER("Button array event is not supported (nothing)\n");
 if (iuer & ASLE_IUER_ROTATION_LOCK_BTN)
  DRM_DEBUG_DRIVER("Button array event is not supported (rotation lock)\n");
 if (iuer & ASLE_IUER_VOLUME_DOWN_BTN)
  DRM_DEBUG_DRIVER("Button array event is not supported (volume down)\n");
 if (iuer & ASLE_IUER_VOLUME_UP_BTN)
  DRM_DEBUG_DRIVER("Button array event is not supported (volume up)\n");
 if (iuer & ASLE_IUER_WINDOWS_BTN)
  DRM_DEBUG_DRIVER("Button array event is not supported (windows)\n");
 if (iuer & ASLE_IUER_POWER_BTN)
  DRM_DEBUG_DRIVER("Button array event is not supported (power)\n");

 return ASLC_BUTTON_ARRAY_FAILED;
}
