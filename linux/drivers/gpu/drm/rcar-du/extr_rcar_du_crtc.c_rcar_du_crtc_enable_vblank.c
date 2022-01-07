
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int vblank_enable; } ;
struct drm_crtc {int dummy; } ;


 int DIER ;
 int DIER_VBE ;
 int DSRCR ;
 int DSRCR_VBCL ;
 int rcar_du_crtc_set (struct rcar_du_crtc*,int ,int ) ;
 int rcar_du_crtc_write (struct rcar_du_crtc*,int ,int ) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static int rcar_du_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);

 rcar_du_crtc_write(rcrtc, DSRCR, DSRCR_VBCL);
 rcar_du_crtc_set(rcrtc, DIER, DIER_VBE);
 rcrtc->vblank_enable = 1;

 return 0;
}
