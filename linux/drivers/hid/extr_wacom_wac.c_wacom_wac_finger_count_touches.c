
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_2__ features; struct input_dev* touch_input; } ;
struct input_mt_slot {int dummy; } ;
struct input_dev {TYPE_1__* mt; int key; } ;
struct TYPE_3__ {int num_slots; struct input_mt_slot* slots; } ;


 int ABS_MT_TRACKING_ID ;
 int BTN_TOUCH ;
 int input_mt_get_value (struct input_mt_slot*,int ) ;
 scalar_t__ report_touch_events (struct wacom_wac*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int wacom_wac_finger_count_touches(struct wacom_wac *wacom)
{
 struct input_dev *input = wacom->touch_input;
 unsigned touch_max = wacom->features.touch_max;
 int count = 0;
 int i;

 if (!touch_max)
  return 0;

 if (touch_max == 1)
  return test_bit(BTN_TOUCH, input->key) &&
   report_touch_events(wacom);

 for (i = 0; i < input->mt->num_slots; i++) {
  struct input_mt_slot *ps = &input->mt->slots[i];
  int id = input_mt_get_value(ps, ABS_MT_TRACKING_ID);
  if (id >= 0)
   count++;
 }

 return count;
}
