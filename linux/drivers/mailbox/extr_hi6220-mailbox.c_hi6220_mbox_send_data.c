
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {unsigned int slot; int dst_irq; int dir; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {int ipc; scalar_t__ base; scalar_t__ tx_irq_mode; } ;


 int BIT (int ) ;
 scalar_t__ DST_INT_RAW_REG (int ) ;
 int MBOX_ACK_AUTOMATIC ;
 int MBOX_ACK_IRQ ;
 scalar_t__ MBOX_DATA_REG (unsigned int) ;
 int MBOX_MSG_LEN ;
 int MBOX_STATE_TX ;
 int MBOX_TX ;
 int mbox_set_mode (struct hi6220_mbox*,unsigned int,int ) ;
 int mbox_set_state (struct hi6220_mbox*,unsigned int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int hi6220_mbox_send_data(struct mbox_chan *chan, void *msg)
{
 struct hi6220_mbox_chan *mchan = chan->con_priv;
 struct hi6220_mbox *mbox = mchan->parent;
 unsigned int slot = mchan->slot;
 u32 *buf = msg;
 int i;


 mchan->dir = MBOX_TX;

 mbox_set_state(mbox, slot, MBOX_STATE_TX);

 if (mbox->tx_irq_mode)
  mbox_set_mode(mbox, slot, MBOX_ACK_IRQ);
 else
  mbox_set_mode(mbox, slot, MBOX_ACK_AUTOMATIC);

 for (i = 0; i < MBOX_MSG_LEN; i++)
  writel(buf[i], mbox->base + MBOX_DATA_REG(slot) + i * 4);


 writel(BIT(mchan->dst_irq), DST_INT_RAW_REG(mbox->ipc));
 return 0;
}
