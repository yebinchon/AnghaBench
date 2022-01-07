
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {scalar_t__ pixel_format; int height; int width; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ DRM_FORMAT_RGB565 ;
 scalar_t__ DRM_FORMAT_RGB888 ;
 scalar_t__ DRM_FORMAT_XRGB8888 ;
 int EINVAL ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 scalar_t__ cirrus_check_size (int ,int ,int *) ;
 struct drm_framebuffer* drm_gem_fb_create_with_dirty (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;

__attribute__((used)) static struct drm_framebuffer*
cirrus_fb_create(struct drm_device *dev, struct drm_file *file_priv,
   const struct drm_mode_fb_cmd2 *mode_cmd)
{
 if (mode_cmd->pixel_format != DRM_FORMAT_RGB565 &&
     mode_cmd->pixel_format != DRM_FORMAT_RGB888 &&
     mode_cmd->pixel_format != DRM_FORMAT_XRGB8888)
  return ERR_PTR(-EINVAL);
 if (cirrus_check_size(mode_cmd->width, mode_cmd->height, ((void*)0)) < 0)
  return ERR_PTR(-EINVAL);
 return drm_gem_fb_create_with_dirty(dev, file_priv, mode_cmd);
}
