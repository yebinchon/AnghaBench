
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_fb_cmd2 {int fb_id; } ;
struct TYPE_2__ {int id; } ;
struct drm_framebuffer {int filp_head; TYPE_1__ base; } ;
struct drm_file {int fbs_lock; int fbs; } ;
struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct drm_framebuffer*) ;
 int PTR_ERR (struct drm_framebuffer*) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_framebuffer* drm_internal_framebuffer_create (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_file*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_mode_addfb2(struct drm_device *dev,
      void *data, struct drm_file *file_priv)
{
 struct drm_mode_fb_cmd2 *r = data;
 struct drm_framebuffer *fb;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 fb = drm_internal_framebuffer_create(dev, r, file_priv);
 if (IS_ERR(fb))
  return PTR_ERR(fb);

 DRM_DEBUG_KMS("[FB:%d]\n", fb->base.id);
 r->fb_id = fb->base.id;


 mutex_lock(&file_priv->fbs_lock);
 list_add(&fb->filp_head, &file_priv->fbs);
 mutex_unlock(&file_priv->fbs_lock);

 return 0;
}
