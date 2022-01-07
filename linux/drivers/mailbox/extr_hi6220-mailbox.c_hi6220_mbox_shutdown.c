
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {size_t ack_irq; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {int ** irq_map_chan; int ipc; } ;


 int ACK_INT_DIS_REG (int ) ;
 int BIT (size_t) ;
 int writel (int ,int ) ;

__attribute__((used)) static void hi6220_mbox_shutdown(struct mbox_chan *chan)
{
 struct hi6220_mbox_chan *mchan = chan->con_priv;
 struct hi6220_mbox *mbox = mchan->parent;


 writel(BIT(mchan->ack_irq), ACK_INT_DIS_REG(mbox->ipc));
 mbox->irq_map_chan[mchan->ack_irq] = ((void*)0);
}
