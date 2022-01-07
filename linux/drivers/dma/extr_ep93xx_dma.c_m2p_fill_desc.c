
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ep93xx_dma_desc {int size; int dst_addr; int src_addr; } ;
struct ep93xx_dma_chan {int buffer; scalar_t__ regs; int chan; } ;


 scalar_t__ DMA_MEM_TO_DEV ;
 scalar_t__ M2P_BASE0 ;
 scalar_t__ M2P_BASE1 ;
 scalar_t__ M2P_MAXCNT0 ;
 scalar_t__ M2P_MAXCNT1 ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ ep93xx_dma_chan_direction (int *) ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void m2p_fill_desc(struct ep93xx_dma_chan *edmac)
{
 struct ep93xx_dma_desc *desc;
 u32 bus_addr;

 desc = ep93xx_dma_get_active(edmac);
 if (!desc) {
  dev_warn(chan2dev(edmac), "M2P: empty descriptor list\n");
  return;
 }

 if (ep93xx_dma_chan_direction(&edmac->chan) == DMA_MEM_TO_DEV)
  bus_addr = desc->src_addr;
 else
  bus_addr = desc->dst_addr;

 if (edmac->buffer == 0) {
  writel(desc->size, edmac->regs + M2P_MAXCNT0);
  writel(bus_addr, edmac->regs + M2P_BASE0);
 } else {
  writel(desc->size, edmac->regs + M2P_MAXCNT1);
  writel(bus_addr, edmac->regs + M2P_BASE1);
 }

 edmac->buffer ^= 1;
}
