
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_queue_inst {int name; scalar_t__ is_tx; } ;
struct ti_msgmgr_inst {struct ti_msgmgr_desc* desc; } ;
struct ti_msgmgr_desc {int dummy; } ;
struct mbox_chan {TYPE_1__* mbox; struct ti_queue_inst* con_priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dev_err (struct device*,char*,int ) ;
 struct ti_msgmgr_inst* dev_get_drvdata (struct device*) ;
 int ti_msgmgr_queue_get_num_messages (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ;
 scalar_t__ ti_msgmgr_queue_is_error (struct ti_msgmgr_desc const*,struct ti_queue_inst*) ;

__attribute__((used)) static bool ti_msgmgr_queue_peek_data(struct mbox_chan *chan)
{
 struct ti_queue_inst *qinst = chan->con_priv;
 struct device *dev = chan->mbox->dev;
 struct ti_msgmgr_inst *inst = dev_get_drvdata(dev);
 const struct ti_msgmgr_desc *desc = inst->desc;
 int msg_count;

 if (qinst->is_tx)
  return 0;

 if (ti_msgmgr_queue_is_error(desc, qinst)) {
  dev_err(dev, "Error on channel %s\n", qinst->name);
  return 0;
 }

 msg_count = ti_msgmgr_queue_get_num_messages(desc, qinst);

 return msg_count ? 1 : 0;
}
