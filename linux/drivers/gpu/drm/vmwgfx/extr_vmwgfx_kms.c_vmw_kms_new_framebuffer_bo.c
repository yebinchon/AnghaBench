
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {scalar_t__ active_display_unit; struct drm_device* dev; } ;
struct vmw_framebuffer {int bo; int base; int user_handle; } ;
struct vmw_framebuffer_bo {struct vmw_framebuffer base; int buffer; } ;
struct TYPE_2__ {unsigned int num_pages; } ;
struct vmw_buffer_object {TYPE_1__ base; } ;
struct drm_mode_fb_cmd2 {unsigned int height; unsigned int* pitches; int pixel_format; int * handles; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,...) ;




 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,int *,struct drm_mode_fb_cmd2 const*) ;
 int kfree (struct vmw_framebuffer_bo*) ;
 struct vmw_framebuffer_bo* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_reference (struct vmw_buffer_object*) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 scalar_t__ vmw_du_screen_object ;
 int vmw_framebuffer_bo_funcs ;

__attribute__((used)) static int vmw_kms_new_framebuffer_bo(struct vmw_private *dev_priv,
          struct vmw_buffer_object *bo,
          struct vmw_framebuffer **out,
          const struct drm_mode_fb_cmd2
          *mode_cmd)

{
 struct drm_device *dev = dev_priv->dev;
 struct vmw_framebuffer_bo *vfbd;
 unsigned int requested_size;
 struct drm_format_name_buf format_name;
 int ret;

 requested_size = mode_cmd->height * mode_cmd->pitches[0];
 if (unlikely(requested_size > bo->base.num_pages * PAGE_SIZE)) {
  DRM_ERROR("Screen buffer object size is too small "
     "for requested mode.\n");
  return -EINVAL;
 }


 if (dev_priv->active_display_unit == vmw_du_screen_object) {
  switch (mode_cmd->pixel_format) {
  case 128:
  case 131:
   break;
  case 129:
  case 130:
   break;
  default:
   DRM_ERROR("Invalid pixel format: %s\n",
      drm_get_format_name(mode_cmd->pixel_format, &format_name));
   return -EINVAL;
  }
 }

 vfbd = kzalloc(sizeof(*vfbd), GFP_KERNEL);
 if (!vfbd) {
  ret = -ENOMEM;
  goto out_err1;
 }

 drm_helper_mode_fill_fb_struct(dev, &vfbd->base.base, mode_cmd);
 vfbd->base.bo = 1;
 vfbd->buffer = vmw_bo_reference(bo);
 vfbd->base.user_handle = mode_cmd->handles[0];
 *out = &vfbd->base;

 ret = drm_framebuffer_init(dev, &vfbd->base.base,
       &vmw_framebuffer_bo_funcs);
 if (ret)
  goto out_err2;

 return 0;

out_err2:
 vmw_bo_unreference(&bo);
 kfree(vfbd);
out_err1:
 return ret;
}
