
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int enabled; int refcount; } ;
struct drm_device {int vblank_time_lock; int vbl_lock; struct drm_vblank_crtc* vblank; } ;


 int DRM_DEBUG (char*,unsigned int,int) ;
 int WRITE_ONCE (int ,int) ;
 int __enable_vblank (struct drm_device*,unsigned int) ;
 int assert_spin_locked (int *) ;
 int atomic_dec (int *) ;
 int drm_update_vblank_count (struct drm_device*,unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int drm_vblank_enable(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 int ret = 0;

 assert_spin_locked(&dev->vbl_lock);

 spin_lock(&dev->vblank_time_lock);

 if (!vblank->enabled) {







  ret = __enable_vblank(dev, pipe);
  DRM_DEBUG("enabling vblank on crtc %u, ret: %d\n", pipe, ret);
  if (ret) {
   atomic_dec(&vblank->refcount);
  } else {
   drm_update_vblank_count(dev, pipe, 0);





   WRITE_ONCE(vblank->enabled, 1);
  }
 }

 spin_unlock(&dev->vblank_time_lock);

 return ret;
}
