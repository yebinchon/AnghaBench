
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct exc3000_data {int prop; int timer; int client; int * buf; struct input_dev* input; } ;
typedef int irqreturn_t ;


 int EXC3000_LEN_FRAME ;
 int EXC3000_SLOTS_PER_FRAME ;
 int EXC3000_TIMEOUT_MS ;
 int IRQ_HANDLED ;
 int del_timer_sync (int *) ;
 int exc3000_read_data (int ,int *,int*) ;
 int exc3000_report_slots (struct input_dev*,int *,int *,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int min (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static irqreturn_t exc3000_interrupt(int irq, void *dev_id)
{
 struct exc3000_data *data = dev_id;
 struct input_dev *input = data->input;
 u8 *buf = data->buf;
 int slots, total_slots;
 int error;

 error = exc3000_read_data(data->client, buf, &total_slots);
 if (error) {

  mod_timer(&data->timer,
     jiffies + msecs_to_jiffies(EXC3000_TIMEOUT_MS));
  goto out;
 }




 del_timer_sync(&data->timer);

 while (total_slots > 0) {
  slots = min(total_slots, EXC3000_SLOTS_PER_FRAME);
  exc3000_report_slots(input, &data->prop, buf + 4, slots);
  total_slots -= slots;
  buf += EXC3000_LEN_FRAME;
 }

 input_mt_sync_frame(input);
 input_sync(input);

out:
 return IRQ_HANDLED;
}
