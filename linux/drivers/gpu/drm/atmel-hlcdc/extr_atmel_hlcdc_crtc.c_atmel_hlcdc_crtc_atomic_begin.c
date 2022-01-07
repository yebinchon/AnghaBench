
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct atmel_hlcdc_crtc {TYPE_2__* event; } ;
struct TYPE_4__ {int pipe; } ;
struct TYPE_3__ {TYPE_2__* event; } ;


 int WARN_ON (int) ;
 int drm_crtc_index (struct drm_crtc*) ;
 struct atmel_hlcdc_crtc* drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;

__attribute__((used)) static void atmel_hlcdc_crtc_atomic_begin(struct drm_crtc *c,
       struct drm_crtc_state *old_s)
{
 struct atmel_hlcdc_crtc *crtc = drm_crtc_to_atmel_hlcdc_crtc(c);

 if (c->state->event) {
  c->state->event->pipe = drm_crtc_index(c);

  WARN_ON(drm_crtc_vblank_get(c) != 0);

  crtc->event = c->state->event;
  c->state->event = ((void*)0);
 }
}
