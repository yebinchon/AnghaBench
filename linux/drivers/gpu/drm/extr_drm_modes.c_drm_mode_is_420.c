
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_display_info {int dummy; } ;


 scalar_t__ drm_mode_is_420_also (struct drm_display_info const*,struct drm_display_mode const*) ;
 scalar_t__ drm_mode_is_420_only (struct drm_display_info const*,struct drm_display_mode const*) ;

bool drm_mode_is_420(const struct drm_display_info *display,
       const struct drm_display_mode *mode)
{
 return drm_mode_is_420_only(display, mode) ||
  drm_mode_is_420_also(display, mode);
}
