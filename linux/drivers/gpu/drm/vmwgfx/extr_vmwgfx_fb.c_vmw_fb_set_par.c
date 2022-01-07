
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int dev; } ;
struct vmw_fb_par {int bo_mutex; struct drm_display_mode* set_mode; int local_work; TYPE_1__* set_fb; int fb_y; int fb_x; int con; int crtc; struct vmw_private* vmw_priv; } ;
struct fb_var_screeninfo {int xres; int yoffset; int xoffset; int bits_per_pixel; int yres; } ;
struct fb_info {struct fb_var_screeninfo var; struct vmw_fb_par* par; } ;
struct drm_mode_set {int num_connectors; int * connectors; TYPE_1__* fb; struct drm_display_mode* mode; scalar_t__ y; scalar_t__ x; int crtc; } ;
struct drm_display_mode {int hdisplay; int vdisplay; int member_0; } ;
struct TYPE_2__ {int height; int width; } ;


 int DIV_ROUND_UP (int ,int) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DRM_MODE_TYPE_DRIVER ;
 int EINVAL ;
 int ENOMEM ;
 int drm_mode_destroy (int ,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_duplicate (int ,struct drm_display_mode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int vmw_fb_dirty_mark (struct vmw_fb_par*,int ,int ,int ,int ) ;
 int vmw_fb_kms_framebuffer (struct fb_info*) ;
 int vmw_guess_mode_timing (struct drm_display_mode*) ;
 int vmw_kms_validate_mode_vram (struct vmw_private*,int,int ) ;
 int vmwgfx_set_config_internal (struct drm_mode_set*) ;

__attribute__((used)) static int vmw_fb_set_par(struct fb_info *info)
{
 struct vmw_fb_par *par = info->par;
 struct vmw_private *vmw_priv = par->vmw_priv;
 struct drm_mode_set set;
 struct fb_var_screeninfo *var = &info->var;
 struct drm_display_mode new_mode = { DRM_MODE("fb_mode",
  DRM_MODE_TYPE_DRIVER,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC)
 };
 struct drm_display_mode *mode;
 int ret;

 mode = drm_mode_duplicate(vmw_priv->dev, &new_mode);
 if (!mode) {
  DRM_ERROR("Could not create new fb mode.\n");
  return -ENOMEM;
 }

 mode->hdisplay = var->xres;
 mode->vdisplay = var->yres;
 vmw_guess_mode_timing(mode);

 if (!vmw_kms_validate_mode_vram(vmw_priv,
     mode->hdisplay *
     DIV_ROUND_UP(var->bits_per_pixel, 8),
     mode->vdisplay)) {
  drm_mode_destroy(vmw_priv->dev, mode);
  return -EINVAL;
 }

 mutex_lock(&par->bo_mutex);
 ret = vmw_fb_kms_framebuffer(info);
 if (ret)
  goto out_unlock;

 par->fb_x = var->xoffset;
 par->fb_y = var->yoffset;

 set.crtc = par->crtc;
 set.x = 0;
 set.y = 0;
 set.mode = mode;
 set.fb = par->set_fb;
 set.num_connectors = 1;
 set.connectors = &par->con;

 ret = vmwgfx_set_config_internal(&set);
 if (ret)
  goto out_unlock;

 vmw_fb_dirty_mark(par, par->fb_x, par->fb_y,
     par->set_fb->width, par->set_fb->height);




 schedule_delayed_work(&par->local_work, 0);

out_unlock:
 if (par->set_mode)
  drm_mode_destroy(vmw_priv->dev, par->set_mode);
 par->set_mode = mode;

 mutex_unlock(&par->bo_mutex);

 return ret;
}
