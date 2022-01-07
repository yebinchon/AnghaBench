
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_crtc {int pending; int * event; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {int * event; } ;


 int WARN_ON (int) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static void omap_crtc_arm_event(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 WARN_ON(omap_crtc->pending);
 omap_crtc->pending = 1;

 if (crtc->state->event) {
  omap_crtc->event = crtc->state->event;
  crtc->state->event = ((void*)0);
 }
}
