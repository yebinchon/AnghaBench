
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_pending_vblank_event {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct armada_crtc {struct drm_pending_vblank_event* event; } ;
struct TYPE_2__ {int event; } ;


 int WARN_ON (int) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 struct armada_crtc* drm_to_armada_crtc (struct drm_crtc*) ;
 struct drm_pending_vblank_event* xchg (int *,int *) ;

__attribute__((used)) static void armada_drm_crtc_queue_state_event(struct drm_crtc *crtc)
{
 struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 struct drm_pending_vblank_event *event;


 event = xchg(&crtc->state->event, ((void*)0));
 if (event) {
  WARN_ON(drm_crtc_vblank_get(crtc) != 0);
  dcrtc->event = event;
 }
}
