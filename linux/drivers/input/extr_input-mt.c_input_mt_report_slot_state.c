
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_slot {int frame; } ;
struct input_mt {size_t slot; int frame; struct input_mt_slot* slots; } ;
struct input_dev {struct input_mt* mt; } ;


 int ABS_MT_TOOL_TYPE ;
 int ABS_MT_TRACKING_ID ;
 int EV_ABS ;
 int input_event (struct input_dev*,int ,int ,unsigned int) ;
 int input_mt_get_value (struct input_mt_slot*,int ) ;
 int input_mt_new_trkid (struct input_mt*) ;

bool input_mt_report_slot_state(struct input_dev *dev,
    unsigned int tool_type, bool active)
{
 struct input_mt *mt = dev->mt;
 struct input_mt_slot *slot;
 int id;

 if (!mt)
  return 0;

 slot = &mt->slots[mt->slot];
 slot->frame = mt->frame;

 if (!active) {
  input_event(dev, EV_ABS, ABS_MT_TRACKING_ID, -1);
  return 0;
 }

 id = input_mt_get_value(slot, ABS_MT_TRACKING_ID);
 if (id < 0)
  id = input_mt_new_trkid(mt);

 input_event(dev, EV_ABS, ABS_MT_TRACKING_ID, id);
 input_event(dev, EV_ABS, ABS_MT_TOOL_TYPE, tool_type);

 return 1;
}
