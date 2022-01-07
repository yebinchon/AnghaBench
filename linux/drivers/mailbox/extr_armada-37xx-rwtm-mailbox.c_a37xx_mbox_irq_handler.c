
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct a37xx_mbox {scalar_t__ base; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ RWTM_HOST_INT_RESET ;
 int SP_CMD_COMPLETE ;
 int SP_CMD_QUEUE_FULL ;
 int SP_CMD_QUEUE_FULL_ACCESS ;
 int a37xx_mbox_receive (struct mbox_chan*) ;
 int dev_err (int ,char*) ;
 int mbox_chan_txdone (struct mbox_chan*,int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t a37xx_mbox_irq_handler(int irq, void *data)
{
 struct mbox_chan *chan = data;
 struct a37xx_mbox *mbox = chan->con_priv;
 u32 reg;

 reg = readl(mbox->base + RWTM_HOST_INT_RESET);

 if (reg & SP_CMD_COMPLETE)
  a37xx_mbox_receive(chan);

 if (reg & (SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL))
  dev_err(mbox->dev, "Secure processor command queue full\n");

 writel(reg, mbox->base + RWTM_HOST_INT_RESET);
 if (reg)
  mbox_chan_txdone(chan, 0);

 return reg ? IRQ_HANDLED : IRQ_NONE;
}
