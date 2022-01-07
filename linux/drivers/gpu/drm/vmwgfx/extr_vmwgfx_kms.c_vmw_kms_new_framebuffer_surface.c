
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ height; int depth; } ;
struct vmw_surface {int* mip_levels; int num_sizes; int format; TYPE_1__ base_size; int scanout; } ;
struct vmw_private {scalar_t__ active_display_unit; int has_dx; struct drm_device* dev; } ;
struct vmw_framebuffer {int base; int user_handle; } ;
struct vmw_framebuffer_surface {int is_bo_proxy; struct vmw_framebuffer base; int surface; } ;
struct drm_mode_fb_cmd2 {scalar_t__ width; scalar_t__ height; int pixel_format; int * handles; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum SVGA3dSurfaceFormat { ____Placeholder_SVGA3dSurfaceFormat } SVGA3dSurfaceFormat ;


 int DRM_ERROR (char*,...) ;




 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int SVGA3D_A1R5G5B5 ;
 int SVGA3D_A8R8G8B8 ;
 int SVGA3D_R5G6B5 ;
 int SVGA3D_X8R8G8B8 ;
 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,int *,struct drm_mode_fb_cmd2 const*) ;
 int kfree (struct vmw_framebuffer_surface*) ;
 struct vmw_framebuffer_surface* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vmw_du_legacy ;
 int vmw_framebuffer_surface_funcs ;
 int vmw_surface_reference (struct vmw_surface*) ;
 int vmw_surface_unreference (struct vmw_surface**) ;

__attribute__((used)) static int vmw_kms_new_framebuffer_surface(struct vmw_private *dev_priv,
        struct vmw_surface *surface,
        struct vmw_framebuffer **out,
        const struct drm_mode_fb_cmd2
        *mode_cmd,
        bool is_bo_proxy)

{
 struct drm_device *dev = dev_priv->dev;
 struct vmw_framebuffer_surface *vfbs;
 enum SVGA3dSurfaceFormat format;
 int ret;
 struct drm_format_name_buf format_name;


 if (dev_priv->active_display_unit == vmw_du_legacy)
  return -ENOSYS;






 if (unlikely(!surface->scanout))
  return -EINVAL;

 if (unlikely(surface->mip_levels[0] != 1 ||
       surface->num_sizes != 1 ||
       surface->base_size.width < mode_cmd->width ||
       surface->base_size.height < mode_cmd->height ||
       surface->base_size.depth != 1)) {
  DRM_ERROR("Incompatible surface dimensions "
     "for requested mode.\n");
  return -EINVAL;
 }

 switch (mode_cmd->pixel_format) {
 case 131:
  format = SVGA3D_A8R8G8B8;
  break;
 case 128:
  format = SVGA3D_X8R8G8B8;
  break;
 case 130:
  format = SVGA3D_R5G6B5;
  break;
 case 129:
  format = SVGA3D_A1R5G5B5;
  break;
 default:
  DRM_ERROR("Invalid pixel format: %s\n",
     drm_get_format_name(mode_cmd->pixel_format, &format_name));
  return -EINVAL;
 }





 if (!dev_priv->has_dx && format != surface->format) {
  DRM_ERROR("Invalid surface format for requested mode.\n");
  return -EINVAL;
 }

 vfbs = kzalloc(sizeof(*vfbs), GFP_KERNEL);
 if (!vfbs) {
  ret = -ENOMEM;
  goto out_err1;
 }

 drm_helper_mode_fill_fb_struct(dev, &vfbs->base.base, mode_cmd);
 vfbs->surface = vmw_surface_reference(surface);
 vfbs->base.user_handle = mode_cmd->handles[0];
 vfbs->is_bo_proxy = is_bo_proxy;

 *out = &vfbs->base;

 ret = drm_framebuffer_init(dev, &vfbs->base.base,
       &vmw_framebuffer_surface_funcs);
 if (ret)
  goto out_err2;

 return 0;

out_err2:
 vmw_surface_unreference(&surface);
 kfree(vfbs);
out_err1:
 return ret;
}
