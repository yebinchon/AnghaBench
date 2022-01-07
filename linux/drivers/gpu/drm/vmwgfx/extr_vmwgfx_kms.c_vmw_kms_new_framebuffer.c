
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_surface {int dummy; } ;
struct vmw_private {scalar_t__ active_display_unit; int dev; } ;
struct vmw_framebuffer {int unpin; int pin; } ;
struct vmw_buffer_object {int dummy; } ;
struct drm_mode_fb_cmd2 {int width; int height; } ;


 int BUG () ;
 struct vmw_framebuffer* ERR_PTR (int) ;
 int vmw_create_bo_proxy (int ,struct drm_mode_fb_cmd2 const*,struct vmw_buffer_object*,struct vmw_surface**) ;
 scalar_t__ vmw_du_screen_target ;
 int vmw_framebuffer_pin ;
 int vmw_framebuffer_unpin ;
 int vmw_kms_new_framebuffer_bo (struct vmw_private*,struct vmw_buffer_object*,struct vmw_framebuffer**,struct drm_mode_fb_cmd2 const*) ;
 int vmw_kms_new_framebuffer_surface (struct vmw_private*,struct vmw_surface*,struct vmw_framebuffer**,struct drm_mode_fb_cmd2 const*,int) ;
 scalar_t__ vmw_kms_srf_ok (struct vmw_private*,int,int ) ;
 int vmw_surface_unreference (struct vmw_surface**) ;

struct vmw_framebuffer *
vmw_kms_new_framebuffer(struct vmw_private *dev_priv,
   struct vmw_buffer_object *bo,
   struct vmw_surface *surface,
   bool only_2d,
   const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct vmw_framebuffer *vfb = ((void*)0);
 bool is_bo_proxy = 0;
 int ret;






 if (vmw_kms_srf_ok(dev_priv, mode_cmd->width, mode_cmd->height) &&
     bo && only_2d &&
     mode_cmd->width > 64 &&
     dev_priv->active_display_unit == vmw_du_screen_target) {
  ret = vmw_create_bo_proxy(dev_priv->dev, mode_cmd,
       bo, &surface);
  if (ret)
   return ERR_PTR(ret);

  is_bo_proxy = 1;
 }


 if (surface) {
  ret = vmw_kms_new_framebuffer_surface(dev_priv, surface, &vfb,
            mode_cmd,
            is_bo_proxy);





  if (is_bo_proxy)
   vmw_surface_unreference(&surface);
 } else if (bo) {
  ret = vmw_kms_new_framebuffer_bo(dev_priv, bo, &vfb,
       mode_cmd);
 } else {
  BUG();
 }

 if (ret)
  return ERR_PTR(ret);

 vfb->pin = vmw_framebuffer_pin;
 vfb->unpin = vmw_framebuffer_unpin;

 return vfb;
}
