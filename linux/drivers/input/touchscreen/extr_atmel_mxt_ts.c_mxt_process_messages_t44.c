
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mxt_data {scalar_t__* msg_buf; scalar_t__ max_reportid; int update_input; scalar_t__ T5_msg_size; int T44_address; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __mxt_read_reg (TYPE_1__*,int ,scalar_t__,scalar_t__*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,...) ;
 int mxt_input_sync (struct mxt_data*) ;
 int mxt_proc_message (struct mxt_data*,scalar_t__*) ;
 int mxt_read_and_process_messages (struct mxt_data*,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxt_process_messages_t44(struct mxt_data *data)
{
 struct device *dev = &data->client->dev;
 int ret;
 u8 count, num_left;


 ret = __mxt_read_reg(data->client, data->T44_address,
  data->T5_msg_size + 1, data->msg_buf);
 if (ret) {
  dev_err(dev, "Failed to read T44 and T5 (%d)\n", ret);
  return IRQ_NONE;
 }

 count = data->msg_buf[0];





 if (count == 0)
  return IRQ_NONE;

 if (count > data->max_reportid) {
  dev_warn(dev, "T44 count %d exceeded max report id\n", count);
  count = data->max_reportid;
 }


 ret = mxt_proc_message(data, data->msg_buf + 1);
 if (ret < 0) {
  dev_warn(dev, "Unexpected invalid message\n");
  return IRQ_NONE;
 }

 num_left = count - 1;


 if (num_left) {
  ret = mxt_read_and_process_messages(data, num_left);
  if (ret < 0)
   goto end;
  else if (ret != num_left)
   dev_warn(dev, "Unexpected invalid message\n");
 }

end:
 if (data->update_input) {
  mxt_input_sync(data);
  data->update_input = 0;
 }

 return IRQ_HANDLED;
}
