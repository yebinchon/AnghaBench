
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {struct input_dev* vals; struct input_dev* absinfo; struct input_dev* poller; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int input_ff_destroy (struct input_dev*) ;
 int input_mt_destroy_slots (struct input_dev*) ;
 int kfree (struct input_dev*) ;
 int module_put (int ) ;
 struct input_dev* to_input_dev (struct device*) ;

__attribute__((used)) static void input_dev_release(struct device *device)
{
 struct input_dev *dev = to_input_dev(device);

 input_ff_destroy(dev);
 input_mt_destroy_slots(dev);
 kfree(dev->poller);
 kfree(dev->absinfo);
 kfree(dev->vals);
 kfree(dev);

 module_put(THIS_MODULE);
}
