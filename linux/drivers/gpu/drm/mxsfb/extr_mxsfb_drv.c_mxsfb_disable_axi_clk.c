
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxsfb_drm_private {scalar_t__ clk_axi; } ;


 int clk_disable_unprepare (scalar_t__) ;

void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb)
{
 if (mxsfb->clk_axi)
  clk_disable_unprepare(mxsfb->clk_axi);
}
