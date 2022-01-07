
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxsfb_drm_private {scalar_t__ base; } ;
struct drm_simple_display_pipe {int dummy; } ;


 int CTRL1_CUR_FRAME_DONE_IRQ ;
 int CTRL1_CUR_FRAME_DONE_IRQ_EN ;
 scalar_t__ LCDC_CTRL1 ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 struct mxsfb_drm_private* drm_pipe_to_mxsfb_drm_private (struct drm_simple_display_pipe*) ;
 int mxsfb_disable_axi_clk (struct mxsfb_drm_private*) ;
 int mxsfb_enable_axi_clk (struct mxsfb_drm_private*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxsfb_pipe_enable_vblank(struct drm_simple_display_pipe *pipe)
{
 struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);


 mxsfb_enable_axi_clk(mxsfb);
 writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
 writel(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_SET);
 mxsfb_disable_axi_clk(mxsfb);

 return 0;
}
