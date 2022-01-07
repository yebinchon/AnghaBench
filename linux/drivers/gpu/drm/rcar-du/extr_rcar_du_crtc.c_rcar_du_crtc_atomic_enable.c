
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bridge; } ;
struct rcar_du_encoder {TYPE_2__ base; } ;
struct rcar_du_device {struct rcar_du_encoder** encoders; TYPE_1__* info; } ;
struct rcar_du_crtc_state {int outputs; } ;
struct rcar_du_crtc {size_t index; struct rcar_du_device* dev; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_4__ {int lvds_clk_mask; } ;


 int BIT (size_t) ;
 size_t RCAR_DU_OUTPUT_DPAD0 ;
 size_t RCAR_DU_OUTPUT_LVDS0 ;
 int rcar_du_crtc_get (struct rcar_du_crtc*) ;
 int rcar_du_crtc_start (struct rcar_du_crtc*) ;
 int rcar_lvds_clk_enable (int ,int) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;
 struct rcar_du_crtc_state* to_rcar_crtc_state (TYPE_3__*) ;

__attribute__((used)) static void rcar_du_crtc_atomic_enable(struct drm_crtc *crtc,
           struct drm_crtc_state *old_state)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);
 struct rcar_du_crtc_state *rstate = to_rcar_crtc_state(crtc->state);
 struct rcar_du_device *rcdu = rcrtc->dev;

 rcar_du_crtc_get(rcrtc);






 if (rcdu->info->lvds_clk_mask & BIT(rcrtc->index) &&
     rstate->outputs == BIT(RCAR_DU_OUTPUT_DPAD0)) {
  struct rcar_du_encoder *encoder =
   rcdu->encoders[RCAR_DU_OUTPUT_LVDS0 + rcrtc->index];
  const struct drm_display_mode *mode =
   &crtc->state->adjusted_mode;

  rcar_lvds_clk_enable(encoder->base.bridge,
         mode->clock * 1000);
 }

 rcar_du_crtc_start(rcrtc);
}
