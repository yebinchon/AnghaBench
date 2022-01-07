
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cookie; } ;
struct ep93xx_dma_desc {int size; int dst_addr; int src_addr; TYPE_1__ txd; } ;
struct ep93xx_dma_chan {scalar_t__ regs; } ;


 int INTERRUPT_DONE ;
 int INTERRUPT_NEXT_BUFFER ;
 int INTERRUPT_UNKNOWN ;
 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFBINT ;
 int M2P_CONTROL_STALLINT ;
 scalar_t__ M2P_INTERRUPT ;
 int M2P_INTERRUPT_ERROR ;
 int M2P_INTERRUPT_NFB ;
 int M2P_INTERRUPT_STALL ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int dev_err (int ,char*,int ,int ,int ,int ) ;
 scalar_t__ ep93xx_dma_advance_active (struct ep93xx_dma_chan*) ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int m2p_fill_desc (struct ep93xx_dma_chan*) ;
 int m2p_set_control (struct ep93xx_dma_chan*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int m2p_hw_interrupt(struct ep93xx_dma_chan *edmac)
{
 u32 irq_status = readl(edmac->regs + M2P_INTERRUPT);
 u32 control;

 if (irq_status & M2P_INTERRUPT_ERROR) {
  struct ep93xx_dma_desc *desc = ep93xx_dma_get_active(edmac);


  writel(1, edmac->regs + M2P_INTERRUPT);
  dev_err(chan2dev(edmac),
   "DMA transfer failed! Details:\n"
   "\tcookie	: %d\n"
   "\tsrc_addr	: 0x%08x\n"
   "\tdst_addr	: 0x%08x\n"
   "\tsize		: %zu\n",
   desc->txd.cookie, desc->src_addr, desc->dst_addr,
   desc->size);
 }






 if (!(irq_status & (M2P_INTERRUPT_STALL | M2P_INTERRUPT_NFB)))
  return INTERRUPT_UNKNOWN;

 if (ep93xx_dma_advance_active(edmac)) {
  m2p_fill_desc(edmac);
  return INTERRUPT_NEXT_BUFFER;
 }


 control = readl(edmac->regs + M2P_CONTROL);
 control &= ~(M2P_CONTROL_STALLINT | M2P_CONTROL_NFBINT);
 m2p_set_control(edmac, control);

 return INTERRUPT_DONE;
}
