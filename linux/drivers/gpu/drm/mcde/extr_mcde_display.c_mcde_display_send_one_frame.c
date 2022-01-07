
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {int dev; scalar_t__ regs; scalar_t__ te_sync; int mdsi; } ;


 scalar_t__ MCDE_CHNL0SYNCHSW ;
 int MCDE_CHNLXSYNCHSW_SW_TRIG ;
 int MCDE_FIFO_A ;
 int dev_dbg (int ,char*) ;
 int mcde_disable_fifo (struct mcde*,int ,int) ;
 int mcde_dsi_te_request (int ) ;
 int mcde_enable_fifo (struct mcde*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mcde_display_send_one_frame(struct mcde *mcde)
{

 if (mcde->te_sync)
  mcde_dsi_te_request(mcde->mdsi);


 mcde_enable_fifo(mcde, MCDE_FIFO_A);

 if (mcde->te_sync) {






  dev_dbg(mcde->dev, "sent TE0 framebuffer update\n");
  return;
 }


 writel(MCDE_CHNLXSYNCHSW_SW_TRIG,
        mcde->regs + MCDE_CHNL0SYNCHSW);
 mcde_disable_fifo(mcde, MCDE_FIFO_A, 1);

 dev_dbg(mcde->dev, "sent SW framebuffer update\n");
}
