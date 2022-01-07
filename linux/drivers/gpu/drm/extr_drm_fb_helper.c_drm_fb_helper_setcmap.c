
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ visual; } ;
struct fb_info {TYPE_1__ fix; struct drm_fb_helper* par; } ;
struct fb_cmap {int dummy; } ;
struct TYPE_4__ {int modeset_mutex; } ;
struct drm_fb_helper {int lock; TYPE_2__ client; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int EBUSY ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_master_internal_acquire (struct drm_device*) ;
 int drm_master_internal_release (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ oops_in_progress ;
 int setcmap_atomic (struct fb_cmap*,struct fb_info*) ;
 int setcmap_legacy (struct fb_cmap*,struct fb_info*) ;
 int setcmap_pseudo_palette (struct fb_cmap*,struct fb_info*) ;

int drm_fb_helper_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct drm_device *dev = fb_helper->dev;
 int ret;

 if (oops_in_progress)
  return -EBUSY;

 mutex_lock(&fb_helper->lock);

 if (!drm_master_internal_acquire(dev)) {
  ret = -EBUSY;
  goto unlock;
 }

 mutex_lock(&fb_helper->client.modeset_mutex);
 if (info->fix.visual == FB_VISUAL_TRUECOLOR)
  ret = setcmap_pseudo_palette(cmap, info);
 else if (drm_drv_uses_atomic_modeset(fb_helper->dev))
  ret = setcmap_atomic(cmap, info);
 else
  ret = setcmap_legacy(cmap, info);
 mutex_unlock(&fb_helper->client.modeset_mutex);

 drm_master_internal_release(dev);
unlock:
 mutex_unlock(&fb_helper->lock);

 return ret;
}
