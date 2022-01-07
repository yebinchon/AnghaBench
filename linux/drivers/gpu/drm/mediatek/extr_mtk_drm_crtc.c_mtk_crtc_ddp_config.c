
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config; } ;
struct mtk_plane_state {TYPE_2__ pending; } ;
struct TYPE_3__ {int state; } ;
struct mtk_drm_crtc {int pending_planes; unsigned int layer_nr; struct drm_plane* planes; struct mtk_ddp_comp** ddp_comp; TYPE_1__ base; } ;
struct mtk_ddp_comp {int dummy; } ;
struct mtk_crtc_state {int pending_config; int pending_vrefresh; int pending_height; int pending_width; } ;
struct drm_plane {int state; } ;
struct drm_crtc {int dummy; } ;


 int mtk_ddp_comp_config (struct mtk_ddp_comp*,int ,int ,int ,int ) ;
 int mtk_ddp_comp_layer_config (struct mtk_ddp_comp*,unsigned int,struct mtk_plane_state*) ;
 struct mtk_drm_crtc* to_mtk_crtc (struct drm_crtc*) ;
 struct mtk_crtc_state* to_mtk_crtc_state (int ) ;
 struct mtk_plane_state* to_mtk_plane_state (int ) ;

__attribute__((used)) static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
{
 struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
 struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
 unsigned int i;






 if (state->pending_config) {
  mtk_ddp_comp_config(comp, state->pending_width,
        state->pending_height,
        state->pending_vrefresh, 0);

  state->pending_config = 0;
 }

 if (mtk_crtc->pending_planes) {
  for (i = 0; i < mtk_crtc->layer_nr; i++) {
   struct drm_plane *plane = &mtk_crtc->planes[i];
   struct mtk_plane_state *plane_state;

   plane_state = to_mtk_plane_state(plane->state);

   if (plane_state->pending.config) {
    mtk_ddp_comp_layer_config(comp, i, plane_state);
    plane_state->pending.config = 0;
   }
  }
  mtk_crtc->pending_planes = 0;
 }
}
