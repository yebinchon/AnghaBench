
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct a37xx_mbox {scalar_t__ base; int dev; int irq; } ;


 int DRIVER_NAME ;
 scalar_t__ RWTM_HOST_INT_MASK ;
 int SP_CMD_COMPLETE ;
 int SP_CMD_QUEUE_FULL ;
 int SP_CMD_QUEUE_FULL_ACCESS ;
 int a37xx_mbox_irq_handler ;
 int dev_err (int ,char*) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct mbox_chan*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int a37xx_mbox_startup(struct mbox_chan *chan)
{
 struct a37xx_mbox *mbox = chan->con_priv;
 u32 reg;
 int ret;

 ret = devm_request_irq(mbox->dev, mbox->irq, a37xx_mbox_irq_handler, 0,
          DRIVER_NAME, chan);
 if (ret < 0) {
  dev_err(mbox->dev, "Cannot request irq\n");
  return ret;
 }


 reg = readl(mbox->base + RWTM_HOST_INT_MASK);
 reg &= ~(SP_CMD_COMPLETE | SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL);
 writel(reg, mbox->base + RWTM_HOST_INT_MASK);

 return 0;
}
