
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;


 int DRM_INFO (char*) ;
 int QUIRK_INCREASE_T12_DELAY ;

__attribute__((used)) static void quirk_increase_t12_delay(struct drm_i915_private *i915)
{
 i915->quirks |= QUIRK_INCREASE_T12_DELAY;
 DRM_INFO("Applying T12 delay quirk\n");
}
