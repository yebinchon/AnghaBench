
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_crtc {int vblank_enable; } ;
struct drm_crtc {int dummy; } ;


 int DIER ;
 int DIER_VBE ;
 int rcar_du_crtc_clr (struct rcar_du_crtc*,int ,int ) ;
 struct rcar_du_crtc* to_rcar_crtc (struct drm_crtc*) ;

__attribute__((used)) static void rcar_du_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct rcar_du_crtc *rcrtc = to_rcar_crtc(crtc);

 rcar_du_crtc_clr(rcrtc, DIER, DIER_VBE);
 rcrtc->vblank_enable = 0;
}
