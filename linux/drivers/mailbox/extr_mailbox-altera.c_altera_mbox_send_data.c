
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {int dummy; } ;
struct altera_mbox {scalar_t__ mbox_base; scalar_t__ intr_mode; int dev; int is_sender; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MAILBOX_CMD_REG ;
 scalar_t__ MAILBOX_PTR_REG ;
 size_t MBOX_CMD ;
 size_t MBOX_PTR ;
 scalar_t__ altera_mbox_full (struct altera_mbox*) ;
 int altera_mbox_tx_intmask (struct altera_mbox*,int) ;
 int dev_warn (int ,char*) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int altera_mbox_send_data(struct mbox_chan *chan, void *data)
{
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);
 u32 *udata = (u32 *)data;

 if (!mbox || !data)
  return -EINVAL;
 if (!mbox->is_sender) {
  dev_warn(mbox->dev,
    "failed to send. This is receiver mailbox.\n");
  return -EINVAL;
 }

 if (altera_mbox_full(mbox))
  return -EBUSY;


 if (mbox->intr_mode)
  altera_mbox_tx_intmask(mbox, 1);


 writel_relaxed(udata[MBOX_PTR], mbox->mbox_base + MAILBOX_PTR_REG);
 writel_relaxed(udata[MBOX_CMD], mbox->mbox_base + MAILBOX_CMD_REG);

 return 0;
}
