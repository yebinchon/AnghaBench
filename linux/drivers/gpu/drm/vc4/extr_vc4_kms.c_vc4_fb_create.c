
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {scalar_t__ t_format; } ;
struct drm_mode_fb_cmd2 {int flags; int * modifier; int * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED ;
 int DRM_FORMAT_MOD_NONE ;
 int DRM_MODE_FB_MODIFIERS ;
 int ENOENT ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 struct drm_framebuffer* drm_gem_fb_create (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct vc4_bo* to_vc4_bo (struct drm_gem_object*) ;

__attribute__((used)) static struct drm_framebuffer *vc4_fb_create(struct drm_device *dev,
          struct drm_file *file_priv,
          const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_mode_fb_cmd2 mode_cmd_local;




 if (!(mode_cmd->flags & DRM_MODE_FB_MODIFIERS)) {
  struct drm_gem_object *gem_obj;
  struct vc4_bo *bo;

  gem_obj = drm_gem_object_lookup(file_priv,
      mode_cmd->handles[0]);
  if (!gem_obj) {
   DRM_DEBUG("Failed to look up GEM BO %d\n",
      mode_cmd->handles[0]);
   return ERR_PTR(-ENOENT);
  }
  bo = to_vc4_bo(gem_obj);

  mode_cmd_local = *mode_cmd;

  if (bo->t_format) {
   mode_cmd_local.modifier[0] =
    DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED;
  } else {
   mode_cmd_local.modifier[0] = DRM_FORMAT_MOD_NONE;
  }

  drm_gem_object_put_unlocked(gem_obj);

  mode_cmd = &mode_cmd_local;
 }

 return drm_gem_fb_create(dev, file_priv, mode_cmd);
}
