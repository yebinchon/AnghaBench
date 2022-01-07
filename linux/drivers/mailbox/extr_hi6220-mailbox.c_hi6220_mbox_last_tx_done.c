
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {int slot; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {scalar_t__ base; int tx_irq_mode; } ;


 int BUG_ON (int ) ;
 scalar_t__ MBOX_MODE_REG (int ) ;
 int MBOX_STATE_IDLE ;
 int MBOX_STATE_MASK ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool hi6220_mbox_last_tx_done(struct mbox_chan *chan)
{
 struct hi6220_mbox_chan *mchan = chan->con_priv;
 struct hi6220_mbox *mbox = mchan->parent;
 u32 state;


 BUG_ON(mbox->tx_irq_mode);

 state = readl(mbox->base + MBOX_MODE_REG(mchan->slot));
 return ((state & MBOX_STATE_MASK) == MBOX_STATE_IDLE);
}
