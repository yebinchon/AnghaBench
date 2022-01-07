
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_desc {int size; int dst_addr; int src_addr; } ;
struct ep93xx_dma_chan {int buffer; scalar_t__ regs; } ;


 scalar_t__ M2M_BCR0 ;
 scalar_t__ M2M_BCR1 ;
 scalar_t__ M2M_DAR_BASE0 ;
 scalar_t__ M2M_DAR_BASE1 ;
 scalar_t__ M2M_SAR_BASE0 ;
 scalar_t__ M2M_SAR_BASE1 ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int dev_warn (int ,char*) ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void m2m_fill_desc(struct ep93xx_dma_chan *edmac)
{
 struct ep93xx_dma_desc *desc;

 desc = ep93xx_dma_get_active(edmac);
 if (!desc) {
  dev_warn(chan2dev(edmac), "M2M: empty descriptor list\n");
  return;
 }

 if (edmac->buffer == 0) {
  writel(desc->src_addr, edmac->regs + M2M_SAR_BASE0);
  writel(desc->dst_addr, edmac->regs + M2M_DAR_BASE0);
  writel(desc->size, edmac->regs + M2M_BCR0);
 } else {
  writel(desc->src_addr, edmac->regs + M2M_SAR_BASE1);
  writel(desc->dst_addr, edmac->regs + M2M_DAR_BASE1);
  writel(desc->size, edmac->regs + M2M_BCR1);
 }

 edmac->buffer ^= 1;
}
