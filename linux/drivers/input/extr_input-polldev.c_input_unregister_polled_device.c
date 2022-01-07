
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_polled_dev {TYPE_2__* input; scalar_t__ devres_managed; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int WARN_ON (int ) ;
 int devm_input_polldev_match ;
 int devm_input_polldev_unregister ;
 int devres_destroy (int ,int ,int ,struct input_polled_dev*) ;
 int input_unregister_device (TYPE_2__*) ;

void input_unregister_polled_device(struct input_polled_dev *dev)
{
 if (dev->devres_managed)
  WARN_ON(devres_destroy(dev->input->dev.parent,
     devm_input_polldev_unregister,
     devm_input_polldev_match,
     dev));

 input_unregister_device(dev->input);
}
