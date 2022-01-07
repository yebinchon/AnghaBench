
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {scalar_t__* modifier; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 struct drm_framebuffer* drm_gem_fb_create (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 int malidp_verify_afbc_framebuffer (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;

struct drm_framebuffer *
malidp_fb_create(struct drm_device *dev, struct drm_file *file,
   const struct drm_mode_fb_cmd2 *mode_cmd)
{
 if (mode_cmd->modifier[0]) {
  if (!malidp_verify_afbc_framebuffer(dev, file, mode_cmd))
   return ERR_PTR(-EINVAL);
 }

 return drm_gem_fb_create(dev, file, mode_cmd);
}
