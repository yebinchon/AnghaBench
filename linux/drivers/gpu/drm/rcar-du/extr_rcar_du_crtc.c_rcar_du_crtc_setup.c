
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int index; int crtc; int dev; int group; } ;


 int BPOR ;
 int BPOR_RGB (int ,int ,int ) ;
 int DOOR ;
 int DOOR_RGB (int ,int ,int ) ;
 int DS1PR ;
 int DS2PR ;
 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int drm_crtc_vblank_on (int *) ;
 int rcar_du_crtc_set_display_timing (struct rcar_du_crtc*) ;
 int rcar_du_crtc_write (struct rcar_du_crtc*,int ,int ) ;
 int rcar_du_group_set_routing (int ) ;
 int rcar_du_group_write (int ,int ,int ) ;
 scalar_t__ rcar_du_has (int ,int ) ;
 int rcar_du_vsp_enable (struct rcar_du_crtc*) ;

__attribute__((used)) static void rcar_du_crtc_setup(struct rcar_du_crtc *rcrtc)
{

 rcar_du_crtc_write(rcrtc, DOOR, DOOR_RGB(0, 0, 0));
 rcar_du_crtc_write(rcrtc, BPOR, BPOR_RGB(0, 0, 0));


 rcar_du_crtc_set_display_timing(rcrtc);
 rcar_du_group_set_routing(rcrtc->group);


 rcar_du_group_write(rcrtc->group, rcrtc->index % 2 ? DS2PR : DS1PR, 0);


 if (rcar_du_has(rcrtc->dev, RCAR_DU_FEATURE_VSP1_SOURCE))
  rcar_du_vsp_enable(rcrtc);


 drm_crtc_vblank_on(&rcrtc->crtc);
}
