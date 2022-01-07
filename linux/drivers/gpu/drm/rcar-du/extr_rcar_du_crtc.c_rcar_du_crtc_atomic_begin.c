
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_crtc {int dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {int enable; } ;


 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int WARN_ON (int) ;
 int rcar_du_crtc_get (struct rcar_du_crtc*) ;
 scalar_t__ rcar_du_has (int ,int ) ;
 int rcar_du_vsp_atomic_begin (struct rcar_du_crtc*) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static void rcar_du_crtc_atomic_begin(struct drm_crtc *crtc,
          struct drm_crtc_state *old_crtc_state)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);

 WARN_ON(!crtc->state->enable);
 rcar_du_crtc_get(rcrtc);

 if (rcar_du_has(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
  rcar_du_vsp_atomic_begin(rcrtc);
}
