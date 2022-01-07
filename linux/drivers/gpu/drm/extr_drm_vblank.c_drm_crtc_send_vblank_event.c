
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_pending_vblank_event {unsigned int pipe; } ;
struct drm_device {scalar_t__ num_crtcs; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int ktime_t ;


 unsigned int drm_crtc_index (struct drm_crtc*) ;
 scalar_t__ drm_vblank_count_and_time (struct drm_device*,unsigned int,int *) ;
 int ktime_get () ;
 int send_vblank_event (struct drm_device*,struct drm_pending_vblank_event*,scalar_t__,int ) ;

void drm_crtc_send_vblank_event(struct drm_crtc *crtc,
    struct drm_pending_vblank_event *e)
{
 struct drm_device *dev = crtc->dev;
 u64 seq;
 unsigned int pipe = drm_crtc_index(crtc);
 ktime_t now;

 if (dev->num_crtcs > 0) {
  seq = drm_vblank_count_and_time(dev, pipe, &now);
 } else {
  seq = 0;

  now = ktime_get();
 }
 e->pipe = pipe;
 send_vblank_event(dev, e, seq, now);
}
