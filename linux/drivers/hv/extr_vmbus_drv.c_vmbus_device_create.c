
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hv_device {int vendor_id; int dev_instance; int dev_type; struct vmbus_channel* channel; } ;
typedef int guid_t ;


 int GFP_KERNEL ;
 int guid_copy (int *,int const*) ;
 struct hv_device* kzalloc (int,int ) ;
 int pr_err (char*) ;

struct hv_device *vmbus_device_create(const guid_t *type,
          const guid_t *instance,
          struct vmbus_channel *channel)
{
 struct hv_device *child_device_obj;

 child_device_obj = kzalloc(sizeof(struct hv_device), GFP_KERNEL);
 if (!child_device_obj) {
  pr_err("Unable to allocate device object for child device\n");
  return ((void*)0);
 }

 child_device_obj->channel = channel;
 guid_copy(&child_device_obj->dev_type, type);
 guid_copy(&child_device_obj->dev_instance, instance);
 child_device_obj->vendor_id = 0x1414;

 return child_device_obj;
}
