
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int dummy; } ;
struct drm_display_mode {int type; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 scalar_t__ intel_tv_is_preferred_mode (struct drm_display_mode*,struct tv_mode const*) ;

__attribute__((used)) static void
intel_tv_set_mode_type(struct drm_display_mode *mode,
         const struct tv_mode *tv_mode)
{
 mode->type = DRM_MODE_TYPE_DRIVER;

 if (intel_tv_is_preferred_mode(mode, tv_mode))
  mode->type |= DRM_MODE_TYPE_PREFERRED;
}
