
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct arcpgu_drm_private {int clk; } ;


 int ARCPGU_CTRL_ENABLE_MASK ;
 int ARCPGU_REG_CTRL ;
 int arc_pgu_read (struct arcpgu_drm_private*,int ) ;
 int arc_pgu_write (struct arcpgu_drm_private*,int ,int) ;
 int clk_prepare_enable (int ) ;
 struct arcpgu_drm_private* crtc_to_arcpgu_priv (struct drm_crtc*) ;

__attribute__((used)) static void arc_pgu_crtc_atomic_enable(struct drm_crtc *crtc,
           struct drm_crtc_state *old_state)
{
 struct arcpgu_drm_private *arcpgu = crtc_to_arcpgu_priv(crtc);

 clk_prepare_enable(arcpgu->clk);
 arc_pgu_write(arcpgu, ARCPGU_REG_CTRL,
        arc_pgu_read(arcpgu, ARCPGU_REG_CTRL) |
        ARCPGU_CTRL_ENABLE_MASK);
}
