
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_surface {int dummy; } ;
struct vmw_private {int capabilities; int texture_max_height; int texture_max_width; } ;
struct drm_framebuffer {int dummy; } ;
struct vmw_framebuffer {struct drm_framebuffer base; struct ttm_base_object* user_obj; } ;
struct vmw_buffer_object {int dummy; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_base_object {int dummy; } ;
struct drm_mode_fb_cmd2 {int height; int width; int * handles; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;


 int DRM_ERROR (char*,...) ;
 int ENOENT ;
 struct drm_framebuffer* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vmw_framebuffer*) ;
 int PTR_ERR (struct vmw_framebuffer*) ;
 int SVGA_CAP_3D ;
 struct ttm_base_object* ttm_base_object_lookup (struct ttm_object_file*,int ) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 scalar_t__ unlikely (int ) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;
 struct vmw_framebuffer* vmw_kms_new_framebuffer (struct vmw_private*,struct vmw_buffer_object*,struct vmw_surface*,int,struct drm_mode_fb_cmd2 const*) ;
 int vmw_kms_srf_ok (struct vmw_private*,int ,int ) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_surface_unreference (struct vmw_surface**) ;
 int vmw_user_lookup_handle (struct vmw_private*,struct ttm_object_file*,int ,struct vmw_surface**,struct vmw_buffer_object**) ;

__attribute__((used)) static struct drm_framebuffer *vmw_kms_fb_create(struct drm_device *dev,
       struct drm_file *file_priv,
       const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;
 struct vmw_framebuffer *vfb = ((void*)0);
 struct vmw_surface *surface = ((void*)0);
 struct vmw_buffer_object *bo = ((void*)0);
 struct ttm_base_object *user_obj;
 int ret;
 user_obj = ttm_base_object_lookup(tfile, mode_cmd->handles[0]);
 if (unlikely(user_obj == ((void*)0))) {
  DRM_ERROR("Could not locate requested kms frame buffer.\n");
  return ERR_PTR(-ENOENT);
 }






 ret = vmw_user_lookup_handle(dev_priv, tfile,
         mode_cmd->handles[0],
         &surface, &bo);
 if (ret)
  goto err_out;


 if (!bo &&
     !vmw_kms_srf_ok(dev_priv, mode_cmd->width, mode_cmd->height)) {
  DRM_ERROR("Surface size cannot exceed %dx%d",
   dev_priv->texture_max_width,
   dev_priv->texture_max_height);
  goto err_out;
 }


 vfb = vmw_kms_new_framebuffer(dev_priv, bo, surface,
          !(dev_priv->capabilities & SVGA_CAP_3D),
          mode_cmd);
 if (IS_ERR(vfb)) {
  ret = PTR_ERR(vfb);
  goto err_out;
  }

err_out:

 if (bo)
  vmw_bo_unreference(&bo);
 if (surface)
  vmw_surface_unreference(&surface);

 if (ret) {
  DRM_ERROR("failed to create vmw_framebuffer: %i\n", ret);
  ttm_base_object_unref(&user_obj);
  return ERR_PTR(ret);
 } else
  vfb->user_obj = user_obj;

 return &vfb->base;
}
