
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {struct drm_fb_helper* par; } ;
struct TYPE_4__ {TYPE_1__* modesets; } ;
struct drm_fb_helper {int lock; TYPE_2__ client; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;


 int EBUSY ;
 int ENOTTY ;

 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int drm_crtc_wait_one_vblank (struct drm_crtc*) ;
 int drm_master_internal_acquire (struct drm_device*) ;
 int drm_master_internal_release (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_fb_helper_ioctl(struct fb_info *info, unsigned int cmd,
   unsigned long arg)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct drm_device *dev = fb_helper->dev;
 struct drm_crtc *crtc;
 int ret = 0;

 mutex_lock(&fb_helper->lock);
 if (!drm_master_internal_acquire(dev)) {
  ret = -EBUSY;
  goto unlock;
 }

 switch (cmd) {
 case 128:
  crtc = fb_helper->client.modesets[0].crtc;






  ret = drm_crtc_vblank_get(crtc);
  if (!ret) {
   drm_crtc_wait_one_vblank(crtc);
   drm_crtc_vblank_put(crtc);
  }

  ret = 0;
  break;
 default:
  ret = -ENOTTY;
 }

 drm_master_internal_release(dev);
unlock:
 mutex_unlock(&fb_helper->lock);
 return ret;
}
