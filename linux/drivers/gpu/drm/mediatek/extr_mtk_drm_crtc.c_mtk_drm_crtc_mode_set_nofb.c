
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_crtc_state {int pending_config; int pending_vrefresh; int pending_height; int pending_width; } ;
struct TYPE_2__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct drm_crtc {TYPE_1__ mode; int state; } ;


 struct mtk_crtc_state* to_mtk_crtc_state (int ) ;
 int wmb () ;

__attribute__((used)) static void mtk_drm_crtc_mode_set_nofb(struct drm_crtc *crtc)
{
 struct mtk_crtc_state *state = to_mtk_crtc_state(crtc->state);

 state->pending_width = crtc->mode.hdisplay;
 state->pending_height = crtc->mode.vdisplay;
 state->pending_vrefresh = crtc->mode.vrefresh;
 wmb();
 state->pending_config = 1;
}
