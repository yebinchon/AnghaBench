
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_surface {int res; } ;
struct vmw_private {int active_display_unit; } ;
struct vmw_framebuffer {int dummy; } ;
struct drm_vmw_rect {int dummy; } ;
struct drm_file {int dummy; } ;
typedef int int32_t ;


 int ENOSYS ;
 int WARN_ONCE (int,char*) ;


 int vmw_fifo_flush (struct vmw_private*,int) ;
 int vmw_kms_generic_present (struct vmw_private*,struct drm_file*,struct vmw_framebuffer*,struct vmw_surface*,int ,int ,int ,struct drm_vmw_rect*,int ) ;
 int vmw_kms_stdu_surface_dirty (struct vmw_private*,struct vmw_framebuffer*,int *,struct drm_vmw_rect*,int *,int ,int ,int ,int,int *,int *) ;

int vmw_kms_present(struct vmw_private *dev_priv,
      struct drm_file *file_priv,
      struct vmw_framebuffer *vfb,
      struct vmw_surface *surface,
      uint32_t sid,
      int32_t destX, int32_t destY,
      struct drm_vmw_rect *clips,
      uint32_t num_clips)
{
 int ret;

 switch (dev_priv->active_display_unit) {
 case 128:
  ret = vmw_kms_stdu_surface_dirty(dev_priv, vfb, ((void*)0), clips,
       &surface->res, destX, destY,
       num_clips, 1, ((void*)0), ((void*)0));
  break;
 case 129:
  ret = vmw_kms_generic_present(dev_priv, file_priv, vfb, surface,
           sid, destX, destY, clips,
           num_clips);
  break;
 default:
  WARN_ONCE(1,
     "Present called with invalid display system.\n");
  ret = -ENOSYS;
  break;
 }
 if (ret)
  return ret;

 vmw_fifo_flush(dev_priv, 0);

 return 0;
}
