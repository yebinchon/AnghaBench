
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mcde {int regs; int dev; } ;
typedef enum mcde_fifo { ____Placeholder_mcde_fifo } mcde_fifo ;
typedef enum mcde_channel { ____Placeholder_mcde_channel } mcde_channel ;






 int MCDE_CHNL0SYNCHSW ;
 int MCDE_CHNL1SYNCHSW ;
 int MCDE_CHNL2SYNCHSW ;
 int MCDE_CHNL3SYNCHSW ;
 int MCDE_CHNLXSYNCHSW_SW_TRIG ;
 int MCDE_CTRLA ;
 int MCDE_CTRLB ;
 int MCDE_CTRLX_FIFOEMPTY ;


 int dev_err (int ,char*) ;
 int mcde_disable_fifo (struct mcde*,int,int) ;
 int mcde_enable_fifo (struct mcde*,int) ;
 int readl (int) ;
 int writel (int ,int) ;

__attribute__((used)) static void mcde_drain_pipe(struct mcde *mcde, enum mcde_fifo fifo,
       enum mcde_channel ch)
{
 u32 val;
 u32 ctrl;
 u32 synsw;

 switch (fifo) {
 case 129:
  ctrl = MCDE_CTRLA;
  break;
 case 128:
  ctrl = MCDE_CTRLB;
  break;
 }

 switch (ch) {
 case 133:
  synsw = MCDE_CHNL0SYNCHSW;
  break;
 case 132:
  synsw = MCDE_CHNL1SYNCHSW;
  break;
 case 131:
  synsw = MCDE_CHNL2SYNCHSW;
  break;
 case 130:
  synsw = MCDE_CHNL3SYNCHSW;
  return;
 }

 val = readl(mcde->regs + ctrl);
 if (!(val & MCDE_CTRLX_FIFOEMPTY)) {
  dev_err(mcde->dev, "Channel A FIFO not empty (handover)\n");

  mcde_enable_fifo(mcde, fifo);

  writel(MCDE_CHNLXSYNCHSW_SW_TRIG, mcde->regs + synsw);

  mcde_disable_fifo(mcde, fifo, 1);
 }
}
