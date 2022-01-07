
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mms114_touch {int dummy; } ;
struct mms114_data {struct input_dev* input_dev; } ;
struct input_dev {int mutex; int users; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MMS114_INFORMATION ;
 int MMS114_MAX_TOUCH ;
 int MMS114_PACKET_NUM ;
 int MMS114_PACKET_SIZE ;
 int __mms114_read_reg (struct mms114_data*,int ,int,int *) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_sync (struct input_dev*) ;
 int mms114_process_mt (struct mms114_data*,struct mms114_touch*) ;
 int mms114_read_reg (struct mms114_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t mms114_interrupt(int irq, void *dev_id)
{
 struct mms114_data *data = dev_id;
 struct input_dev *input_dev = data->input_dev;
 struct mms114_touch touch[MMS114_MAX_TOUCH];
 int packet_size;
 int touch_size;
 int index;
 int error;

 mutex_lock(&input_dev->mutex);
 if (!input_dev->users) {
  mutex_unlock(&input_dev->mutex);
  goto out;
 }
 mutex_unlock(&input_dev->mutex);

 packet_size = mms114_read_reg(data, MMS114_PACKET_SIZE);
 if (packet_size <= 0)
  goto out;

 touch_size = packet_size / MMS114_PACKET_NUM;

 error = __mms114_read_reg(data, MMS114_INFORMATION, packet_size,
   (u8 *)touch);
 if (error < 0)
  goto out;

 for (index = 0; index < touch_size; index++)
  mms114_process_mt(data, touch + index);

 input_mt_report_pointer_emulation(data->input_dev, 1);
 input_sync(data->input_dev);

out:
 return IRQ_HANDLED;
}
