
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_vblank_crtc {int queue; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;


 scalar_t__ WARN (int,char*,unsigned int,...) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ drm_vblank_count (struct drm_device*,unsigned int) ;
 int drm_vblank_get (struct drm_device*,unsigned int) ;
 int drm_vblank_put (struct drm_device*,unsigned int) ;
 int msecs_to_jiffies (int) ;
 int wait_event_timeout (int ,int,int ) ;

void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 int ret;
 u64 last;

 if (WARN_ON(pipe >= dev->num_crtcs))
  return;

 ret = drm_vblank_get(dev, pipe);
 if (WARN(ret, "vblank not available on crtc %i, ret=%i\n", pipe, ret))
  return;

 last = drm_vblank_count(dev, pipe);

 ret = wait_event_timeout(vblank->queue,
     last != drm_vblank_count(dev, pipe),
     msecs_to_jiffies(100));

 WARN(ret == 0, "vblank wait timed out on crtc %i\n", pipe);

 drm_vblank_put(dev, pipe);
}
