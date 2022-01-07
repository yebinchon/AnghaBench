
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_vmbus_device_id {int dummy; } ;
struct hv_driver {int id_table; int name; } ;
struct hv_device {scalar_t__ driver_override; int dev_type; } ;
typedef int guid_t ;


 struct hv_vmbus_device_id* hv_vmbus_dev_match (int ,int const*) ;
 struct hv_vmbus_device_id* hv_vmbus_dynid_match (struct hv_driver*,int const*) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 struct hv_vmbus_device_id vmbus_device_null ;

__attribute__((used)) static const struct hv_vmbus_device_id *hv_vmbus_get_id(struct hv_driver *drv,
       struct hv_device *dev)
{
 const guid_t *guid = &dev->dev_type;
 const struct hv_vmbus_device_id *id;


 if (dev->driver_override && strcmp(dev->driver_override, drv->name))
  return ((void*)0);


 id = hv_vmbus_dynid_match(drv, guid);
 if (!id)
  id = hv_vmbus_dev_match(drv->id_table, guid);


 if (!id && dev->driver_override)
  id = &vmbus_device_null;

 return id;
}
