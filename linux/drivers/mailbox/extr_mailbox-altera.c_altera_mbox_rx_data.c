
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {int dummy; } ;
struct altera_mbox {scalar_t__ mbox_base; } ;


 scalar_t__ MAILBOX_CMD_REG ;
 scalar_t__ MAILBOX_PTR_REG ;
 size_t MBOX_CMD ;
 size_t MBOX_PTR ;
 scalar_t__ altera_mbox_pending (struct altera_mbox*) ;
 int mbox_chan_received_data (struct mbox_chan*,void*) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void altera_mbox_rx_data(struct mbox_chan *chan)
{
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);
 u32 data[2];

 if (altera_mbox_pending(mbox)) {
  data[MBOX_PTR] =
   readl_relaxed(mbox->mbox_base + MAILBOX_PTR_REG);
  data[MBOX_CMD] =
   readl_relaxed(mbox->mbox_base + MAILBOX_CMD_REG);
  mbox_chan_received_data(chan, (void *)data);
 }
}
