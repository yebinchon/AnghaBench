
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct drm_pending_vblank_event {unsigned int pipe; TYPE_1__ base; scalar_t__ sequence; } ;
struct drm_device {int vblank_event_list; int event_lock; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int assert_spin_locked (int *) ;
 scalar_t__ drm_crtc_accurate_vblank_count (struct drm_crtc*) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;
 int list_add_tail (int *,int *) ;

void drm_crtc_arm_vblank_event(struct drm_crtc *crtc,
          struct drm_pending_vblank_event *e)
{
 struct drm_device *dev = crtc->dev;
 unsigned int pipe = drm_crtc_index(crtc);

 assert_spin_locked(&dev->event_lock);

 e->pipe = pipe;
 e->sequence = drm_crtc_accurate_vblank_count(crtc) + 1;
 list_add_tail(&e->base.link, &dev->vblank_event_list);
}
