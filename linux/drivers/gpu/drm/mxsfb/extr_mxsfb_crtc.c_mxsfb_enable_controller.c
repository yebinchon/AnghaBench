
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxsfb_drm_private {scalar_t__ base; scalar_t__ clk; scalar_t__ clk_disp_axi; } ;


 int CTRL_DOTCLK_MODE ;
 int CTRL_RUN ;
 scalar_t__ LCDC_CTRL ;
 scalar_t__ LCDC_VDCTRL4 ;
 scalar_t__ REG_SET ;
 int VDCTRL4_SYNC_SIGNALS_ON ;
 int clk_prepare_enable (scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
{
 u32 reg;

 if (mxsfb->clk_disp_axi)
  clk_prepare_enable(mxsfb->clk_disp_axi);
 clk_prepare_enable(mxsfb->clk);


 writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);


 reg = readl(mxsfb->base + LCDC_VDCTRL4);
 reg |= VDCTRL4_SYNC_SIGNALS_ON;
 writel(reg, mxsfb->base + LCDC_VDCTRL4);

 writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_SET);
}
