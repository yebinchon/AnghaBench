
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_framebuffer* drm_gem_fb_create (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;

__attribute__((used)) static struct drm_framebuffer *atmel_hlcdc_fb_create(struct drm_device *dev,
  struct drm_file *file_priv, const struct drm_mode_fb_cmd2 *mode_cmd)
{
 return drm_gem_fb_create(dev, file_priv, mode_cmd);
}
