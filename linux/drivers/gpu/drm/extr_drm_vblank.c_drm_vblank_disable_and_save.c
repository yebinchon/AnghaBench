
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int enabled; } ;
struct drm_device {int vblank_time_lock; int vbl_lock; struct drm_vblank_crtc* vblank; } ;


 int __disable_vblank (struct drm_device*,unsigned int) ;
 int assert_spin_locked (int *) ;
 int drm_update_vblank_count (struct drm_device*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 unsigned long irqflags;

 assert_spin_locked(&dev->vbl_lock);





 spin_lock_irqsave(&dev->vblank_time_lock, irqflags);







 if (!vblank->enabled)
  goto out;







 drm_update_vblank_count(dev, pipe, 0);
 __disable_vblank(dev, pipe);
 vblank->enabled = 0;

out:
 spin_unlock_irqrestore(&dev->vblank_time_lock, irqflags);
}
