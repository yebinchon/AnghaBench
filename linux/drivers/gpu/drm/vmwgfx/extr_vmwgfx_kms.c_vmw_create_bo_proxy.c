
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_resource {TYPE_1__* dev_priv; scalar_t__ backup_offset; int backup; } ;
struct vmw_surface {struct vmw_resource res; } ;
struct vmw_buffer_object {int dummy; } ;
struct drm_vmw_size {unsigned int width; int depth; int height; int member_0; } ;
struct drm_mode_fb_cmd2 {int pixel_format; unsigned int* pitches; int height; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int cmdbuf_mutex; } ;


 int DRM_ERROR (char*,...) ;




 int EINVAL ;
 int SVGA3D_MS_PATTERN_NONE ;
 int SVGA3D_MS_QUALITY_NONE ;
 int SVGA3D_P8 ;
 int SVGA3D_R5G6B5 ;
 int SVGA3D_X8R8G8B8 ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_bo_reference (struct vmw_buffer_object*) ;
 int vmw_bo_unreference (int *) ;
 int vmw_resource_reserve (struct vmw_resource*,int,int) ;
 int vmw_resource_unreserve (struct vmw_resource*,int,int,int,int *,int ) ;
 int vmw_surface_gb_priv_define (struct drm_device*,int ,int ,int ,int,int,int ,int ,struct drm_vmw_size,int ,int ,struct vmw_surface**) ;

__attribute__((used)) static int vmw_create_bo_proxy(struct drm_device *dev,
          const struct drm_mode_fb_cmd2 *mode_cmd,
          struct vmw_buffer_object *bo_mob,
          struct vmw_surface **srf_out)
{
 uint32_t format;
 struct drm_vmw_size content_base_size = {0};
 struct vmw_resource *res;
 unsigned int bytes_pp;
 struct drm_format_name_buf format_name;
 int ret;

 switch (mode_cmd->pixel_format) {
 case 131:
 case 128:
  format = SVGA3D_X8R8G8B8;
  bytes_pp = 4;
  break;

 case 130:
 case 129:
  format = SVGA3D_R5G6B5;
  bytes_pp = 2;
  break;

 case 8:
  format = SVGA3D_P8;
  bytes_pp = 1;
  break;

 default:
  DRM_ERROR("Invalid framebuffer format %s\n",
     drm_get_format_name(mode_cmd->pixel_format, &format_name));
  return -EINVAL;
 }

 content_base_size.width = mode_cmd->pitches[0] / bytes_pp;
 content_base_size.height = mode_cmd->height;
 content_base_size.depth = 1;

 ret = vmw_surface_gb_priv_define(dev,
      0,
      0,
      format,
      1,
      1,
      0,
      0,
      content_base_size,
      SVGA3D_MS_PATTERN_NONE,
      SVGA3D_MS_QUALITY_NONE,
      srf_out);
 if (ret) {
  DRM_ERROR("Failed to allocate proxy content buffer\n");
  return ret;
 }

 res = &(*srf_out)->res;


 mutex_lock(&res->dev_priv->cmdbuf_mutex);
 (void) vmw_resource_reserve(res, 0, 1);
 vmw_bo_unreference(&res->backup);
 res->backup = vmw_bo_reference(bo_mob);
 res->backup_offset = 0;
 vmw_resource_unreserve(res, 0, 0, 0, ((void*)0), 0);
 mutex_unlock(&res->dev_priv->cmdbuf_mutex);

 return 0;
}
