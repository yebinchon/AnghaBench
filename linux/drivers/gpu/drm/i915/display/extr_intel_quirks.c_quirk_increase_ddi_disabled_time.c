
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;


 int DRM_INFO (char*) ;
 int QUIRK_INCREASE_DDI_DISABLED_TIME ;

__attribute__((used)) static void quirk_increase_ddi_disabled_time(struct drm_i915_private *i915)
{
 i915->quirks |= QUIRK_INCREASE_DDI_DISABLED_TIME;
 DRM_INFO("Applying Increase DDI Disabled quirk\n");
}
