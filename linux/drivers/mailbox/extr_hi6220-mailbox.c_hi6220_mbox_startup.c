
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {int ack_irq; scalar_t__ dir; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {int ipc; } ;


 int ACK_INT_ENA_REG (int ) ;
 int BIT (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int hi6220_mbox_startup(struct mbox_chan *chan)
{
 struct hi6220_mbox_chan *mchan = chan->con_priv;
 struct hi6220_mbox *mbox = mchan->parent;

 mchan->dir = 0;


 writel(BIT(mchan->ack_irq), ACK_INT_ENA_REG(mbox->ipc));
 return 0;
}
