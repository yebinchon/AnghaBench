
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_mhu_link {int irq; scalar_t__ tx_reg; } ;
struct mbox_chan {TYPE_1__* mbox; struct platform_mhu_link* con_priv; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ INTR_CLR_OFS ;
 scalar_t__ INTR_STAT_OFS ;
 int IRQF_SHARED ;
 int dev_err (int ,char*,int ) ;
 int platform_mhu_rx_interrupt ;
 int readl_relaxed (scalar_t__) ;
 int request_irq (int ,int ,int ,char*,struct mbox_chan*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int platform_mhu_startup(struct mbox_chan *chan)
{
 struct platform_mhu_link *mlink = chan->con_priv;
 u32 val;
 int ret;

 val = readl_relaxed(mlink->tx_reg + INTR_STAT_OFS);
 writel_relaxed(val, mlink->tx_reg + INTR_CLR_OFS);

 ret = request_irq(mlink->irq, platform_mhu_rx_interrupt,
     IRQF_SHARED, "platform_mhu_link", chan);
 if (ret) {
  dev_err(chan->mbox->dev,
   "Unable to acquire IRQ %d\n", mlink->irq);
  return ret;
 }

 return 0;
}
