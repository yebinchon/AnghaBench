
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {TYPE_1__* mt; } ;
struct TYPE_2__ {struct TYPE_2__* red; } ;


 int kfree (TYPE_1__*) ;

void input_mt_destroy_slots(struct input_dev *dev)
{
 if (dev->mt) {
  kfree(dev->mt->red);
  kfree(dev->mt);
 }
 dev->mt = ((void*)0);
}
