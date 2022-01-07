
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_client {scalar_t__ knows_txdone; } ;
struct mbox_chan {scalar_t__ txdone_method; int lock; int tx_complete; struct mbox_client* cl; int * active_req; scalar_t__ msg_count; scalar_t__ msg_free; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EBUSY ;
 struct mbox_chan* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mbox_chan*) ;
 int MBOX_IRQ_NAME ;
 scalar_t__ TXDONE_BY_ACK ;
 scalar_t__ TXDONE_BY_POLL ;
 int dev_err (struct device*,char*,int) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct mbox_chan*) ;
 struct mbox_chan* get_pcc_channel (int) ;
 int init_completion (int *) ;
 int* pcc_doorbell_irq ;
 TYPE_1__ pcc_mbox_ctrl ;
 int pcc_mbox_free_channel (struct mbox_chan*) ;
 int pcc_mbox_irq ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct mbox_chan *pcc_mbox_request_channel(struct mbox_client *cl,
  int subspace_id)
{
 struct device *dev = pcc_mbox_ctrl.dev;
 struct mbox_chan *chan;
 unsigned long flags;
 chan = get_pcc_channel(subspace_id);

 if (IS_ERR(chan) || chan->cl) {
  dev_err(dev, "Channel not found for idx: %d\n", subspace_id);
  return ERR_PTR(-EBUSY);
 }

 spin_lock_irqsave(&chan->lock, flags);
 chan->msg_free = 0;
 chan->msg_count = 0;
 chan->active_req = ((void*)0);
 chan->cl = cl;
 init_completion(&chan->tx_complete);

 if (chan->txdone_method == TXDONE_BY_POLL && cl->knows_txdone)
  chan->txdone_method = TXDONE_BY_ACK;

 spin_unlock_irqrestore(&chan->lock, flags);

 if (pcc_doorbell_irq[subspace_id] > 0) {
  int rc;

  rc = devm_request_irq(dev, pcc_doorbell_irq[subspace_id],
          pcc_mbox_irq, 0, MBOX_IRQ_NAME, chan);
  if (unlikely(rc)) {
   dev_err(dev, "failed to register PCC interrupt %d\n",
    pcc_doorbell_irq[subspace_id]);
   pcc_mbox_free_channel(chan);
   chan = ERR_PTR(rc);
  }
 }

 return chan;
}
