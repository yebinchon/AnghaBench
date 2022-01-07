
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {scalar_t__ pixclock; } ;
struct fb_info {struct fb_var_screeninfo var; struct drm_fb_helper* par; } ;
struct drm_fb_helper {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EBUSY ;
 int EINVAL ;
 int drm_fb_helper_restore_fbdev_mode_unlocked (struct drm_fb_helper*) ;
 scalar_t__ oops_in_progress ;

int drm_fb_helper_set_par(struct fb_info *info)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct fb_var_screeninfo *var = &info->var;

 if (oops_in_progress)
  return -EBUSY;

 if (var->pixclock != 0) {
  DRM_ERROR("PIXEL CLOCK SET\n");
  return -EINVAL;
 }

 drm_fb_helper_restore_fbdev_mode_unlocked(fb_helper);

 return 0;
}
