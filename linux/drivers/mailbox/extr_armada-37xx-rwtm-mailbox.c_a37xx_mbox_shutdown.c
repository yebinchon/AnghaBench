
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct a37xx_mbox {int irq; int dev; scalar_t__ base; } ;


 scalar_t__ RWTM_HOST_INT_MASK ;
 int SP_CMD_COMPLETE ;
 int SP_CMD_QUEUE_FULL ;
 int SP_CMD_QUEUE_FULL_ACCESS ;
 int devm_free_irq (int ,int ,struct mbox_chan*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void a37xx_mbox_shutdown(struct mbox_chan *chan)
{
 u32 reg;
 struct a37xx_mbox *mbox = chan->con_priv;


 reg = readl(mbox->base + RWTM_HOST_INT_MASK);
 reg |= SP_CMD_COMPLETE | SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL;
 writel(reg, mbox->base + RWTM_HOST_INT_MASK);

 devm_free_irq(mbox->dev, mbox->irq, chan);
}
