
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt {int frame; } ;
struct input_dev {struct input_mt* mt; } ;


 int __input_mt_drop_unused (struct input_dev*,struct input_mt*) ;

void input_mt_drop_unused(struct input_dev *dev)
{
 struct input_mt *mt = dev->mt;

 if (mt) {
  __input_mt_drop_unused(dev, mt);
  mt->frame++;
 }
}
