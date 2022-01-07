
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slimpro_mbox_chan {scalar_t__ reg; int irq; int dev; } ;
struct mbox_chan {struct slimpro_mbox_chan* con_priv; } ;


 int MBOX_CON_NAME ;
 int MBOX_STATUS_ACK_MASK ;
 int MBOX_STATUS_AVAIL_MASK ;
 scalar_t__ REG_DB_STAT ;
 scalar_t__ REG_DB_STATMASK ;
 int dev_err (int ,char*,int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct slimpro_mbox_chan*) ;
 int readl (scalar_t__) ;
 int slimpro_mbox_irq ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int slimpro_mbox_startup(struct mbox_chan *chan)
{
 struct slimpro_mbox_chan *mb_chan = chan->con_priv;
 int rc;
 u32 val;

 rc = devm_request_irq(mb_chan->dev, mb_chan->irq, slimpro_mbox_irq, 0,
         MBOX_CON_NAME, mb_chan);
 if (unlikely(rc)) {
  dev_err(mb_chan->dev, "failed to register mailbox interrupt %d\n",
   mb_chan->irq);
  return rc;
 }


 writel(MBOX_STATUS_ACK_MASK | MBOX_STATUS_AVAIL_MASK,
        mb_chan->reg + REG_DB_STAT);

 val = readl(mb_chan->reg + REG_DB_STATMASK);
 val &= ~(MBOX_STATUS_ACK_MASK | MBOX_STATUS_AVAIL_MASK);
 writel(val, mb_chan->reg + REG_DB_STATMASK);

 return 0;
}
