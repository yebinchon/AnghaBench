
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_slot {int dummy; } ;
struct input_mt {int trkid; int num_slots; struct input_mt_slot* slots; } ;
struct input_dev {int absbit; struct input_mt* mt; } ;


 int ABS_DISTANCE ;
 int ABS_MT_DISTANCE ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TRACKING_ID ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;
 int TRKID_SGN ;
 scalar_t__ input_abs_get_val (struct input_dev*,int ) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_mt_get_value (struct input_mt_slot*,int ) ;
 int input_mt_report_finger_count (struct input_dev*,int) ;
 scalar_t__ test_bit (int ,int ) ;

void input_mt_report_pointer_emulation(struct input_dev *dev, bool use_count)
{
 struct input_mt *mt = dev->mt;
 struct input_mt_slot *oldest;
 int oldid, count, i;

 if (!mt)
  return;

 oldest = ((void*)0);
 oldid = mt->trkid;
 count = 0;

 for (i = 0; i < mt->num_slots; ++i) {
  struct input_mt_slot *ps = &mt->slots[i];
  int id = input_mt_get_value(ps, ABS_MT_TRACKING_ID);

  if (id < 0)
   continue;
  if ((id - oldid) & TRKID_SGN) {
   oldest = ps;
   oldid = id;
  }
  count++;
 }

 input_event(dev, EV_KEY, BTN_TOUCH, count > 0);

 if (use_count) {
  if (count == 0 &&
      !test_bit(ABS_MT_DISTANCE, dev->absbit) &&
      test_bit(ABS_DISTANCE, dev->absbit) &&
      input_abs_get_val(dev, ABS_DISTANCE) != 0) {






   count = 1;
  }

  input_mt_report_finger_count(dev, count);
 }

 if (oldest) {
  int x = input_mt_get_value(oldest, ABS_MT_POSITION_X);
  int y = input_mt_get_value(oldest, ABS_MT_POSITION_Y);

  input_event(dev, EV_ABS, ABS_X, x);
  input_event(dev, EV_ABS, ABS_Y, y);

  if (test_bit(ABS_MT_PRESSURE, dev->absbit)) {
   int p = input_mt_get_value(oldest, ABS_MT_PRESSURE);
   input_event(dev, EV_ABS, ABS_PRESSURE, p);
  }
 } else {
  if (test_bit(ABS_MT_PRESSURE, dev->absbit))
   input_event(dev, EV_ABS, ABS_PRESSURE, 0);
 }
}
