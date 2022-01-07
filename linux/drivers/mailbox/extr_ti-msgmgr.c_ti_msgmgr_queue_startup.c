
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_queue_inst {int is_tx; int rx_buff; int name; int queue_ctrl; } ;
struct ti_msgmgr_inst {struct ti_msgmgr_desc* desc; } ;
struct ti_msgmgr_desc {int max_message_size; scalar_t__ is_sproxy; } ;
struct mbox_chan {struct ti_queue_inst* con_priv; TYPE_1__* mbox; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPROXY_THREAD_CTRL_DIR_MASK ;
 int dev_err (struct device*,char*,int ) ;
 struct ti_msgmgr_inst* dev_get_drvdata (struct device*) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int readl (int ) ;
 int ti_msgmgr_queue_get_num_messages (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ;
 int ti_msgmgr_queue_rx_irq_req (struct device*,struct ti_msgmgr_desc const*,struct ti_queue_inst*,struct mbox_chan*) ;

__attribute__((used)) static int ti_msgmgr_queue_startup(struct mbox_chan *chan)
{
 struct device *dev = chan->mbox->dev;
 struct ti_msgmgr_inst *inst = dev_get_drvdata(dev);
 struct ti_queue_inst *qinst = chan->con_priv;
 const struct ti_msgmgr_desc *d = inst->desc;
 int ret;
 int msg_count;





 if (d->is_sproxy) {
  qinst->is_tx = (readl(qinst->queue_ctrl) &
    SPROXY_THREAD_CTRL_DIR_MASK) ? 0 : 1;

  msg_count = ti_msgmgr_queue_get_num_messages(d, qinst);

  if (!msg_count && qinst->is_tx) {
   dev_err(dev, "%s: Cannot transmit with 0 credits!\n",
    qinst->name);
   return -EINVAL;
  }
 }

 if (!qinst->is_tx) {

  qinst->rx_buff = kzalloc(d->max_message_size, GFP_KERNEL);
  if (!qinst->rx_buff)
   return -ENOMEM;

  ret = ti_msgmgr_queue_rx_irq_req(dev, d, qinst, chan);
  if (ret) {
   kfree(qinst->rx_buff);
   return ret;
  }
 }

 return 0;
}
