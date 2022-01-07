
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_drm_crtc {TYPE_1__* event; } ;
struct TYPE_4__ {TYPE_1__* event; } ;
struct mtk_crtc_state {TYPE_2__ base; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;
struct TYPE_3__ {int pipe; } ;


 int DRM_ERROR (char*) ;
 int WARN_ON (int) ;
 int drm_crtc_index (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 struct mtk_drm_crtc* to_mtk_crtc (struct drm_crtc*) ;
 struct mtk_crtc_state* to_mtk_crtc_state (int ) ;

__attribute__((used)) static void mtk_drm_crtc_atomic_begin(struct drm_crtc *crtc,
          struct drm_crtc_state *old_crtc_state)
{
 struct mtk_crtc_state *state = to_mtk_crtc_state(crtc->state);
 struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);

 if (mtk_crtc->event && state->base.event)
  DRM_ERROR("new event while there is still a pending event\n");

 if (state->base.event) {
  state->base.event->pipe = drm_crtc_index(crtc);
  WARN_ON(drm_crtc_vblank_get(crtc) != 0);
  mtk_crtc->event = state->base.event;
  state->base.event = ((void*)0);
 }
}
