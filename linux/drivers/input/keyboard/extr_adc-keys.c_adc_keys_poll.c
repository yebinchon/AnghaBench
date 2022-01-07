
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct input_polled_dev {int input; struct adc_keys_state* private; } ;
struct adc_keys_state {int keyup_voltage; int num_keys; int last_key; TYPE_1__* map; int channel; } ;
struct TYPE_2__ {int voltage; int keycode; } ;


 scalar_t__ abs (int) ;
 int iio_read_channel_processed (int ,int*) ;
 int input_report_key (int ,int,int) ;
 int input_sync (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void adc_keys_poll(struct input_polled_dev *dev)
{
 struct adc_keys_state *st = dev->private;
 int i, value, ret;
 u32 diff, closest = 0xffffffff;
 int keycode = 0;

 ret = iio_read_channel_processed(st->channel, &value);
 if (unlikely(ret < 0)) {

  value = st->keyup_voltage;
 } else {
  for (i = 0; i < st->num_keys; i++) {
   diff = abs(st->map[i].voltage - value);
   if (diff < closest) {
    closest = diff;
    keycode = st->map[i].keycode;
   }
  }
 }

 if (abs(st->keyup_voltage - value) < closest)
  keycode = 0;

 if (st->last_key && st->last_key != keycode)
  input_report_key(dev->input, st->last_key, 0);

 if (keycode)
  input_report_key(dev->input, keycode, 1);

 input_sync(dev->input);
 st->last_key = keycode;
}
