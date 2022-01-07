
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_polled_devres {struct input_polled_dev* polldev; } ;
struct input_polled_dev {int devres_managed; TYPE_2__* input; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int devm_input_polldev_release ;
 int devres_add (struct device*,struct input_polled_devres*) ;
 struct input_polled_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct input_polled_devres*) ;
 struct input_polled_dev* input_allocate_polled_device () ;

struct input_polled_dev *devm_input_allocate_polled_device(struct device *dev)
{
 struct input_polled_dev *polldev;
 struct input_polled_devres *devres;

 devres = devres_alloc(devm_input_polldev_release, sizeof(*devres),
         GFP_KERNEL);
 if (!devres)
  return ((void*)0);

 polldev = input_allocate_polled_device();
 if (!polldev) {
  devres_free(devres);
  return ((void*)0);
 }

 polldev->input->dev.parent = dev;
 polldev->devres_managed = 1;

 devres->polldev = polldev;
 devres_add(dev, devres);

 return polldev;
}
