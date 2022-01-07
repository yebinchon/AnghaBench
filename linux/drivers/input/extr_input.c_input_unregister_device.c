
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; scalar_t__ devres_managed; } ;


 int WARN_ON (int ) ;
 int __input_unregister_device (struct input_dev*) ;
 int devm_input_device_match ;
 int devm_input_device_unregister ;
 int devres_destroy (int ,int ,int ,struct input_dev*) ;
 int input_put_device (struct input_dev*) ;

void input_unregister_device(struct input_dev *dev)
{
 if (dev->devres_managed) {
  WARN_ON(devres_destroy(dev->dev.parent,
     devm_input_device_unregister,
     devm_input_device_match,
     dev));
  __input_unregister_device(dev);




 } else {
  __input_unregister_device(dev);
  input_put_device(dev);
 }
}
