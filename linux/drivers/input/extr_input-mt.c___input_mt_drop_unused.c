
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt {int num_slots; int * slots; } ;
struct input_dev {int dummy; } ;


 int ABS_MT_TRACKING_ID ;
 int EV_ABS ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_mt_is_used (struct input_mt*,int *) ;
 int input_mt_slot (struct input_dev*,int) ;

__attribute__((used)) static void __input_mt_drop_unused(struct input_dev *dev, struct input_mt *mt)
{
 int i;

 for (i = 0; i < mt->num_slots; i++) {
  if (!input_mt_is_used(mt, &mt->slots[i])) {
   input_mt_slot(dev, i);
   input_event(dev, EV_ABS, ABS_MT_TRACKING_ID, -1);
  }
 }
}
