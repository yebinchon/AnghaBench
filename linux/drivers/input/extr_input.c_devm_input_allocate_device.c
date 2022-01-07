
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_devres {struct input_dev* input; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {int devres_managed; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int devm_input_device_release ;
 int devres_add (struct device*,struct input_devres*) ;
 struct input_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct input_devres*) ;
 struct input_dev* input_allocate_device () ;

struct input_dev *devm_input_allocate_device(struct device *dev)
{
 struct input_dev *input;
 struct input_devres *devres;

 devres = devres_alloc(devm_input_device_release,
         sizeof(*devres), GFP_KERNEL);
 if (!devres)
  return ((void*)0);

 input = input_allocate_device();
 if (!input) {
  devres_free(devres);
  return ((void*)0);
 }

 input->dev.parent = dev;
 input->devres_managed = 1;

 devres->input = input;
 devres_add(dev, devres);

 return input;
}
