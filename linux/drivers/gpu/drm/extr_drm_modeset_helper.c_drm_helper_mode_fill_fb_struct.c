
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int flags; int * modifier; int * offsets; int * pitches; int height; int width; } ;
struct drm_framebuffer {int flags; int modifier; int * offsets; int * pitches; int height; int width; int format; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int drm_get_format_info (struct drm_device*,struct drm_mode_fb_cmd2 const*) ;

void drm_helper_mode_fill_fb_struct(struct drm_device *dev,
        struct drm_framebuffer *fb,
        const struct drm_mode_fb_cmd2 *mode_cmd)
{
 int i;

 fb->dev = dev;
 fb->format = drm_get_format_info(dev, mode_cmd);
 fb->width = mode_cmd->width;
 fb->height = mode_cmd->height;
 for (i = 0; i < 4; i++) {
  fb->pitches[i] = mode_cmd->pitches[i];
  fb->offsets[i] = mode_cmd->offsets[i];
 }
 fb->modifier = mode_cmd->modifier[0];
 fb->flags = mode_cmd->flags;
}
