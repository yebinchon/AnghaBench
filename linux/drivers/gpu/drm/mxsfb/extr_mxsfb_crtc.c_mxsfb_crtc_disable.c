
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxsfb_drm_private {int dummy; } ;


 int mxsfb_disable_axi_clk (struct mxsfb_drm_private*) ;
 int mxsfb_disable_controller (struct mxsfb_drm_private*) ;

void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb)
{
 mxsfb_disable_controller(mxsfb);
 mxsfb_disable_axi_clk(mxsfb);
}
