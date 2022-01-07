
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_fb_par {scalar_t__ vmw_bo; struct drm_framebuffer* set_fb; int * set_mode; TYPE_1__* vmw_priv; int con; int crtc; } ;
struct drm_mode_set {int * connectors; scalar_t__ num_connectors; int * fb; int * mode; scalar_t__ y; scalar_t__ x; int crtc; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_ERROR (char*) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 int drm_mode_destroy (int ,int *) ;
 int vmw_bo_unreference (scalar_t__*) ;
 int vmwgfx_set_config_internal (struct drm_mode_set*) ;

__attribute__((used)) static int vmw_fb_kms_detach(struct vmw_fb_par *par,
        bool detach_bo,
        bool unref_bo)
{
 struct drm_framebuffer *cur_fb = par->set_fb;
 int ret;


 if (par->set_mode) {
  struct drm_mode_set set;

  set.crtc = par->crtc;
  set.x = 0;
  set.y = 0;
  set.mode = ((void*)0);
  set.fb = ((void*)0);
  set.num_connectors = 0;
  set.connectors = &par->con;
  ret = vmwgfx_set_config_internal(&set);
  if (ret) {
   DRM_ERROR("Could not unset a mode.\n");
   return ret;
  }
  drm_mode_destroy(par->vmw_priv->dev, par->set_mode);
  par->set_mode = ((void*)0);
 }

 if (cur_fb) {
  drm_framebuffer_put(cur_fb);
  par->set_fb = ((void*)0);
 }

 if (par->vmw_bo && detach_bo && unref_bo)
  vmw_bo_unreference(&par->vmw_bo);

 return 0;
}
