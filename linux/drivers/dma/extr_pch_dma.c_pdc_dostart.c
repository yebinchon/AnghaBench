
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int phys; } ;
struct TYPE_5__ {int next; int size; int mem_addr; int dev_addr; } ;
struct pch_dma_desc {TYPE_2__ txd; TYPE_1__ regs; int tx_list; } ;
struct TYPE_7__ {int chan_id; } ;
struct pch_dma_chan {TYPE_3__ chan; } ;


 int DEV_ADDR ;
 int DMA_CTL0_ONESHOT ;
 int DMA_CTL0_SG ;
 int MEM_ADDR ;
 int NEXT ;
 int SIZE ;
 int chan2dev (TYPE_3__*) ;
 int channel_writel (struct pch_dma_chan*,int ,int ) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ list_empty (int *) ;
 int pdc_is_idle (struct pch_dma_chan*) ;
 int pdc_set_mode (TYPE_3__*,int ) ;

__attribute__((used)) static void pdc_dostart(struct pch_dma_chan *pd_chan, struct pch_dma_desc* desc)
{
 if (!pdc_is_idle(pd_chan)) {
  dev_err(chan2dev(&pd_chan->chan),
   "BUG: Attempt to start non-idle channel\n");
  return;
 }

 dev_dbg(chan2dev(&pd_chan->chan), "chan %d -> dev_addr: %x\n",
  pd_chan->chan.chan_id, desc->regs.dev_addr);
 dev_dbg(chan2dev(&pd_chan->chan), "chan %d -> mem_addr: %x\n",
  pd_chan->chan.chan_id, desc->regs.mem_addr);
 dev_dbg(chan2dev(&pd_chan->chan), "chan %d -> size: %x\n",
  pd_chan->chan.chan_id, desc->regs.size);
 dev_dbg(chan2dev(&pd_chan->chan), "chan %d -> next: %x\n",
  pd_chan->chan.chan_id, desc->regs.next);

 if (list_empty(&desc->tx_list)) {
  channel_writel(pd_chan, DEV_ADDR, desc->regs.dev_addr);
  channel_writel(pd_chan, MEM_ADDR, desc->regs.mem_addr);
  channel_writel(pd_chan, SIZE, desc->regs.size);
  channel_writel(pd_chan, NEXT, desc->regs.next);
  pdc_set_mode(&pd_chan->chan, DMA_CTL0_ONESHOT);
 } else {
  channel_writel(pd_chan, NEXT, desc->txd.phys);
  pdc_set_mode(&pd_chan->chan, DMA_CTL0_SG);
 }
}
