
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;


 int DRM_INFO (char*) ;
 int QUIRK_BACKLIGHT_PRESENT ;

__attribute__((used)) static void quirk_backlight_present(struct drm_i915_private *i915)
{
 i915->quirks |= QUIRK_BACKLIGHT_PRESENT;
 DRM_INFO("applying backlight present quirk\n");
}
