
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int msb_right; int length; int offset; } ;
struct TYPE_9__ {int msb_right; int length; int offset; } ;
struct TYPE_8__ {int msb_right; int length; int offset; } ;
struct TYPE_7__ {int msb_right; int length; int offset; } ;
struct fb_var_screeninfo {scalar_t__ pixclock; int bits_per_pixel; scalar_t__ xres; scalar_t__ yres; scalar_t__ xres_virtual; scalar_t__ yres_virtual; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
struct fb_info {int var; struct drm_fb_helper* par; } ;
struct drm_framebuffer {scalar_t__ width; scalar_t__ height; TYPE_5__* format; } ;
struct drm_fb_helper {struct drm_framebuffer* fb; } ;
struct TYPE_11__ {int* cpp; int depth; } ;


 int DRM_DEBUG (char*,...) ;
 int EINVAL ;
 int drm_fb_helper_fill_pixel_fmt (struct fb_var_screeninfo*,int ) ;
 int drm_fb_pixel_format_equal (struct fb_var_screeninfo*,int *) ;
 int drm_format_info_block_height (TYPE_5__*,int ) ;
 int drm_format_info_block_width (TYPE_5__*,int ) ;
 scalar_t__ in_dbg_master () ;

int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
       struct fb_info *info)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct drm_framebuffer *fb = fb_helper->fb;

 if (in_dbg_master())
  return -EINVAL;

 if (var->pixclock != 0) {
  DRM_DEBUG("fbdev emulation doesn't support changing the pixel clock, value of pixclock is ignored\n");
  var->pixclock = 0;
 }

 if ((drm_format_info_block_width(fb->format, 0) > 1) ||
     (drm_format_info_block_height(fb->format, 0) > 1))
  return -EINVAL;





 if (var->bits_per_pixel != fb->format->cpp[0] * 8 ||
     var->xres > fb->width || var->yres > fb->height ||
     var->xres_virtual > fb->width || var->yres_virtual > fb->height) {
  DRM_DEBUG("fb requested width/height/bpp can't fit in current fb "
     "request %dx%d-%d (virtual %dx%d) > %dx%d-%d\n",
     var->xres, var->yres, var->bits_per_pixel,
     var->xres_virtual, var->yres_virtual,
     fb->width, fb->height, fb->format->cpp[0] * 8);
  return -EINVAL;
 }






 if (!var->red.offset && !var->green.offset &&
     !var->blue.offset && !var->transp.offset &&
     !var->red.length && !var->green.length &&
     !var->blue.length && !var->transp.length &&
     !var->red.msb_right && !var->green.msb_right &&
     !var->blue.msb_right && !var->transp.msb_right) {
  drm_fb_helper_fill_pixel_fmt(var, fb->format->depth);
 }





 if (!drm_fb_pixel_format_equal(var, &info->var)) {
  DRM_DEBUG("fbdev emulation doesn't support changing the pixel format\n");
  return -EINVAL;
 }

 return 0;
}
