
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_14__ {int release; int * parent; int * bus; struct kobject kobj; } ;
struct hv_device {TYPE_6__ device; int channels_kset; TYPE_4__* channel; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_9__ {int b; } ;
struct TYPE_10__ {TYPE_1__ if_instance; } ;
struct TYPE_11__ {TYPE_2__ offer; } ;
struct TYPE_12__ {TYPE_3__ offermsg; } ;


 int ENOMEM ;
 int dev_set_name (TYPE_6__*,char*,int ) ;
 int device_register (TYPE_6__*) ;
 int device_unregister (TYPE_6__*) ;
 TYPE_5__* hv_acpi_dev ;
 int hv_bus ;
 int kset_create_and_add (char*,int *,struct kobject*) ;
 int kset_unregister (int ) ;
 int pr_err (char*) ;
 int vmbus_add_channel_kobj (struct hv_device*,TYPE_4__*) ;
 int vmbus_device_release ;

int vmbus_device_register(struct hv_device *child_device_obj)
{
 struct kobject *kobj = &child_device_obj->device.kobj;
 int ret;

 dev_set_name(&child_device_obj->device, "%pUl",
       child_device_obj->channel->offermsg.offer.if_instance.b);

 child_device_obj->device.bus = &hv_bus;
 child_device_obj->device.parent = &hv_acpi_dev->dev;
 child_device_obj->device.release = vmbus_device_release;





 ret = device_register(&child_device_obj->device);
 if (ret) {
  pr_err("Unable to register child device\n");
  return ret;
 }

 child_device_obj->channels_kset = kset_create_and_add("channels",
             ((void*)0), kobj);
 if (!child_device_obj->channels_kset) {
  ret = -ENOMEM;
  goto err_dev_unregister;
 }

 ret = vmbus_add_channel_kobj(child_device_obj,
         child_device_obj->channel);
 if (ret) {
  pr_err("Unable to register primary channeln");
  goto err_kset_unregister;
 }

 return 0;

err_kset_unregister:
 kset_unregister(child_device_obj->channels_kset);

err_dev_unregister:
 device_unregister(&child_device_obj->device);
 return ret;
}
