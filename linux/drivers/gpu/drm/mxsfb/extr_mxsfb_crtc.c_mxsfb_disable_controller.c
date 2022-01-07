
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxsfb_drm_private {scalar_t__ clk_disp_axi; scalar_t__ clk; scalar_t__ base; } ;


 int CTRL_DOTCLK_MODE ;
 int CTRL_RUN ;
 scalar_t__ LCDC_CTRL ;
 scalar_t__ LCDC_VDCTRL4 ;
 scalar_t__ REG_CLR ;
 int VDCTRL4_SYNC_SIGNALS_ON ;
 int clk_disable_unprepare (scalar_t__) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
{
 u32 reg;





 writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_CLR);

 readl_poll_timeout(mxsfb->base + LCDC_CTRL, reg, !(reg & CTRL_RUN),
      0, 1000);

 reg = readl(mxsfb->base + LCDC_VDCTRL4);
 reg &= ~VDCTRL4_SYNC_SIGNALS_ON;
 writel(reg, mxsfb->base + LCDC_VDCTRL4);

 clk_disable_unprepare(mxsfb->clk);
 if (mxsfb->clk_disp_axi)
  clk_disable_unprepare(mxsfb->clk_disp_axi);
}
