
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxsfb_drm_private {TYPE_1__* devdata; scalar_t__ base; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ next_buf; scalar_t__ cur_buf; } ;


 int mxsfb_crtc_mode_set_nofb (struct mxsfb_drm_private*) ;
 int mxsfb_enable_axi_clk (struct mxsfb_drm_private*) ;
 int mxsfb_enable_controller (struct mxsfb_drm_private*) ;
 scalar_t__ mxsfb_get_fb_paddr (struct mxsfb_drm_private*) ;
 int writel (scalar_t__,scalar_t__) ;

void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
{
 dma_addr_t paddr;

 mxsfb_enable_axi_clk(mxsfb);
 mxsfb_crtc_mode_set_nofb(mxsfb);


 paddr = mxsfb_get_fb_paddr(mxsfb);
 if (paddr) {
  writel(paddr, mxsfb->base + mxsfb->devdata->cur_buf);
  writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
 }

 mxsfb_enable_controller(mxsfb);
}
