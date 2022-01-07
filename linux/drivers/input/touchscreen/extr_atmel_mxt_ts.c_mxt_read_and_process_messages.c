
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxt_data {int max_reportid; int T5_msg_size; scalar_t__ msg_buf; int T5_address; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int __mxt_read_reg (TYPE_1__*,int ,int,scalar_t__) ;
 int dev_err (struct device*,char*,int,int) ;
 int mxt_proc_message (struct mxt_data*,scalar_t__) ;

__attribute__((used)) static int mxt_read_and_process_messages(struct mxt_data *data, u8 count)
{
 struct device *dev = &data->client->dev;
 int ret;
 int i;
 u8 num_valid = 0;


 if (count > data->max_reportid)
  return -EINVAL;


 ret = __mxt_read_reg(data->client, data->T5_address,
    data->T5_msg_size * count, data->msg_buf);
 if (ret) {
  dev_err(dev, "Failed to read %u messages (%d)\n", count, ret);
  return ret;
 }

 for (i = 0; i < count; i++) {
  ret = mxt_proc_message(data,
   data->msg_buf + data->T5_msg_size * i);

  if (ret == 1)
   num_valid++;
 }


 return num_valid;
}
