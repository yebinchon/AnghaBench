
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int refcount; int enabled; } ;
struct drm_device {unsigned int num_crtcs; int vbl_lock; struct drm_vblank_crtc* vblank; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int drm_vblank_enable (struct drm_device*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int drm_vblank_get(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 unsigned long irqflags;
 int ret = 0;

 if (!dev->num_crtcs)
  return -EINVAL;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return -EINVAL;

 spin_lock_irqsave(&dev->vbl_lock, irqflags);

 if (atomic_add_return(1, &vblank->refcount) == 1) {
  ret = drm_vblank_enable(dev, pipe);
 } else {
  if (!vblank->enabled) {
   atomic_dec(&vblank->refcount);
   ret = -EINVAL;
  }
 }
 spin_unlock_irqrestore(&dev->vbl_lock, irqflags);

 return ret;
}
