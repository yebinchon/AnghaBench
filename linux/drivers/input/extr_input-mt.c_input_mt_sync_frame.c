
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt {int flags; int frame; } ;
struct input_dev {struct input_mt* mt; } ;


 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_MT_SEMI_MT ;
 int __input_mt_drop_unused (struct input_dev*,struct input_mt*) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;

void input_mt_sync_frame(struct input_dev *dev)
{
 struct input_mt *mt = dev->mt;
 bool use_count = 0;

 if (!mt)
  return;

 if (mt->flags & INPUT_MT_DROP_UNUSED)
  __input_mt_drop_unused(dev, mt);

 if ((mt->flags & INPUT_MT_POINTER) && !(mt->flags & INPUT_MT_SEMI_MT))
  use_count = 1;

 input_mt_report_pointer_emulation(dev, use_count);

 mt->frame++;
}
