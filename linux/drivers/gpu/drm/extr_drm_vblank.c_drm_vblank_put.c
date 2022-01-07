
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vblank_crtc {int disable_timer; int refcount; } ;
struct drm_device {unsigned int num_crtcs; int vblank_disable_immediate; struct drm_vblank_crtc* vblank; } ;


 int HZ ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int drm_vblank_offdelay ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int vblank_disable_fn (int *) ;

__attribute__((used)) static void drm_vblank_put(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;

 if (WARN_ON(atomic_read(&vblank->refcount) == 0))
  return;


 if (atomic_dec_and_test(&vblank->refcount)) {
  if (drm_vblank_offdelay == 0)
   return;
  else if (drm_vblank_offdelay < 0)
   vblank_disable_fn(&vblank->disable_timer);
  else if (!dev->vblank_disable_immediate)
   mod_timer(&vblank->disable_timer,
      jiffies + ((drm_vblank_offdelay * HZ)/1000));
 }
}
