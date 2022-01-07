
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_handler {int (* connect ) (struct input_handler*,struct input_dev*,struct input_device_id const*) ;int name; } ;
struct input_device_id {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct input_dev {TYPE_1__ dev; } ;


 int ENODEV ;
 struct input_device_id* input_match_device (struct input_handler*,struct input_dev*) ;
 int kobject_name (int *) ;
 int pr_err (char*,int ,int ,int) ;
 int stub1 (struct input_handler*,struct input_dev*,struct input_device_id const*) ;

__attribute__((used)) static int input_attach_handler(struct input_dev *dev, struct input_handler *handler)
{
 const struct input_device_id *id;
 int error;

 id = input_match_device(handler, dev);
 if (!id)
  return -ENODEV;

 error = handler->connect(handler, dev, id);
 if (error && error != -ENODEV)
  pr_err("failed to attach handler %s to device %s, error: %d\n",
         handler->name, kobject_name(&dev->dev.kobj), error);

 return error;
}
