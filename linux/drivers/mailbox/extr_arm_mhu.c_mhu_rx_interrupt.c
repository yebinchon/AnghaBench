
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mhu_link {scalar_t__ rx_reg; } ;
struct mbox_chan {struct mhu_link* con_priv; } ;
typedef int irqreturn_t ;


 scalar_t__ INTR_CLR_OFS ;
 scalar_t__ INTR_STAT_OFS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mbox_chan_received_data (struct mbox_chan*,void*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mhu_rx_interrupt(int irq, void *p)
{
 struct mbox_chan *chan = p;
 struct mhu_link *mlink = chan->con_priv;
 u32 val;

 val = readl_relaxed(mlink->rx_reg + INTR_STAT_OFS);
 if (!val)
  return IRQ_NONE;

 mbox_chan_received_data(chan, (void *)&val);

 writel_relaxed(val, mlink->rx_reg + INTR_CLR_OFS);

 return IRQ_HANDLED;
}
