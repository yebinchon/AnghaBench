
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct rcar_du_crtc {int group; int dev; struct drm_crtc crtc; } ;


 int DSYSR_TVM_MASK ;
 int DSYSR_TVM_SWITCH ;
 int RCAR_DU_FEATURE_TVM_SYNC ;
 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int rcar_du_crtc_disable_planes (struct rcar_du_crtc*) ;
 int rcar_du_crtc_dsysr_clr_set (struct rcar_du_crtc*,int ,int ) ;
 int rcar_du_crtc_wait_page_flip (struct rcar_du_crtc*) ;
 int rcar_du_group_start_stop (int ,int) ;
 scalar_t__ rcar_du_has (int ,int ) ;
 int rcar_du_vsp_disable (struct rcar_du_crtc*) ;

__attribute__((used)) static void rcar_du_crtc_stop(struct rcar_du_crtc *rcrtc)
{
 struct drm_crtc *crtc = &rcrtc->crtc;
 rcar_du_crtc_disable_planes(rcrtc);






 rcar_du_crtc_wait_page_flip(rcrtc);
 drm_crtc_vblank_off(crtc);


 if (rcar_du_has(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
  rcar_du_vsp_disable(rcrtc);
 if (rcar_du_has(rcrtc->dev, RCAR_DU_FEATURE_TVM_SYNC))
  rcar_du_crtc_dsysr_clr_set(rcrtc, DSYSR_TVM_MASK,
        DSYSR_TVM_SWITCH);

 rcar_du_group_start_stop(rcrtc->group, 0);
}
