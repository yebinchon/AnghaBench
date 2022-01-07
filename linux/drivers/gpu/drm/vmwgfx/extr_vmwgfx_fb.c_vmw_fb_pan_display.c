
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_fb_par {scalar_t__ fb_x; scalar_t__ fb_y; int bo_mutex; TYPE_1__* set_fb; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ xres; scalar_t__ xres_virtual; scalar_t__ yoffset; scalar_t__ yres; scalar_t__ yres_virtual; } ;
struct fb_info {struct vmw_fb_par* par; } ;
struct TYPE_2__ {int height; int width; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_fb_dirty_mark (struct vmw_fb_par*,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int vmw_fb_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct vmw_fb_par *par = info->par;

 if ((var->xoffset + var->xres) > var->xres_virtual ||
     (var->yoffset + var->yres) > var->yres_virtual) {
  DRM_ERROR("Requested panning can not fit in framebuffer\n");
  return -EINVAL;
 }

 mutex_lock(&par->bo_mutex);
 par->fb_x = var->xoffset;
 par->fb_y = var->yoffset;
 if (par->set_fb)
  vmw_fb_dirty_mark(par, par->fb_x, par->fb_y, par->set_fb->width,
      par->set_fb->height);
 mutex_unlock(&par->bo_mutex);

 return 0;
}
