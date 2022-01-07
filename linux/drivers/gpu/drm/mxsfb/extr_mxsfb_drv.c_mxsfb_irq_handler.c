
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int crtc; } ;
struct mxsfb_drm_private {scalar_t__ base; TYPE_1__ pipe; } ;
struct drm_device {struct mxsfb_drm_private* dev_private; } ;
typedef int irqreturn_t ;


 int CTRL1_CUR_FRAME_DONE_IRQ ;
 int IRQ_HANDLED ;
 scalar_t__ LCDC_CTRL1 ;
 scalar_t__ REG_CLR ;
 int drm_crtc_handle_vblank (int *) ;
 int mxsfb_disable_axi_clk (struct mxsfb_drm_private*) ;
 int mxsfb_enable_axi_clk (struct mxsfb_drm_private*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxsfb_irq_handler(int irq, void *data)
{
 struct drm_device *drm = data;
 struct mxsfb_drm_private *mxsfb = drm->dev_private;
 u32 reg;

 mxsfb_enable_axi_clk(mxsfb);

 reg = readl(mxsfb->base + LCDC_CTRL1);

 if (reg & CTRL1_CUR_FRAME_DONE_IRQ)
  drm_crtc_handle_vblank(&mxsfb->pipe.crtc);

 writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);

 mxsfb_disable_axi_clk(mxsfb);

 return IRQ_HANDLED;
}
