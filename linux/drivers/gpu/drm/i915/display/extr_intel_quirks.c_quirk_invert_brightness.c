
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;


 int DRM_INFO (char*) ;
 int QUIRK_INVERT_BRIGHTNESS ;

__attribute__((used)) static void quirk_invert_brightness(struct drm_i915_private *i915)
{
 i915->quirks |= QUIRK_INVERT_BRIGHTNESS;
 DRM_INFO("applying inverted panel brightness quirk\n");
}
