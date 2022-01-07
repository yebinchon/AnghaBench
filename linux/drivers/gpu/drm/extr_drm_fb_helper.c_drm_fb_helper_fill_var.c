
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_5__ {int bits_per_pixel; void* yres; void* xres; int activate; scalar_t__ yoffset; scalar_t__ xoffset; int accel_flags; int yres_virtual; int xres_virtual; } ;
struct fb_info {TYPE_3__ var; int pseudo_palette; } ;
struct drm_framebuffer {TYPE_1__* format; int height; int width; } ;
struct drm_fb_helper {int pseudo_palette; struct drm_framebuffer* fb; } ;
struct TYPE_4__ {int* cpp; int depth; } ;


 int FB_ACCELF_TEXT ;
 int FB_ACTIVATE_NOW ;
 int WARN_ON (int) ;
 int drm_fb_helper_fill_pixel_fmt (TYPE_3__*,int ) ;
 int drm_format_info_block_height (TYPE_1__*,int ) ;
 int drm_format_info_block_width (TYPE_1__*,int ) ;

__attribute__((used)) static void drm_fb_helper_fill_var(struct fb_info *info,
       struct drm_fb_helper *fb_helper,
       uint32_t fb_width, uint32_t fb_height)
{
 struct drm_framebuffer *fb = fb_helper->fb;

 WARN_ON((drm_format_info_block_width(fb->format, 0) > 1) ||
  (drm_format_info_block_height(fb->format, 0) > 1));
 info->pseudo_palette = fb_helper->pseudo_palette;
 info->var.xres_virtual = fb->width;
 info->var.yres_virtual = fb->height;
 info->var.bits_per_pixel = fb->format->cpp[0] * 8;
 info->var.accel_flags = FB_ACCELF_TEXT;
 info->var.xoffset = 0;
 info->var.yoffset = 0;
 info->var.activate = FB_ACTIVATE_NOW;

 drm_fb_helper_fill_pixel_fmt(&info->var, fb->format->depth);

 info->var.xres = fb_width;
 info->var.yres = fb_height;
}
