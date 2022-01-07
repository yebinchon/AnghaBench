
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_framebuffer {TYPE_2__* funcs; } ;
struct drm_fb_helper {struct drm_framebuffer* fb; struct drm_device* dev; } ;
struct TYPE_3__ {scalar_t__ prefer_shadow; scalar_t__ prefer_shadow_fbdev; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {scalar_t__ dirty; } ;



__attribute__((used)) static bool drm_fbdev_use_shadow_fb(struct drm_fb_helper *fb_helper)
{
 struct drm_device *dev = fb_helper->dev;
 struct drm_framebuffer *fb = fb_helper->fb;

 return dev->mode_config.prefer_shadow_fbdev ||
        dev->mode_config.prefer_shadow ||
        fb->funcs->dirty;
}
