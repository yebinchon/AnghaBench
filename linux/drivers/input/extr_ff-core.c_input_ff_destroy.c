
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {struct ff_device* ff; int evbit; } ;
struct ff_device {struct ff_device* effects; struct ff_device* private; int (* destroy ) (struct ff_device*) ;} ;


 int EV_FF ;
 int __clear_bit (int ,int ) ;
 int kfree (struct ff_device*) ;
 int stub1 (struct ff_device*) ;

void input_ff_destroy(struct input_dev *dev)
{
 struct ff_device *ff = dev->ff;

 __clear_bit(EV_FF, dev->evbit);
 if (ff) {
  if (ff->destroy)
   ff->destroy(ff);
  kfree(ff->private);
  kfree(ff->effects);
  kfree(ff);
  dev->ff = ((void*)0);
 }
}
