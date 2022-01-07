
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_device {int dev; int id; int handle; } ;


 int device_unregister (int *) ;
 int ida_simple_remove (int *,int ) ;
 int scmi_bus_id ;
 int scmi_handle_put (int ) ;

void scmi_device_destroy(struct scmi_device *scmi_dev)
{
 scmi_handle_put(scmi_dev->handle);
 ida_simple_remove(&scmi_bus_id, scmi_dev->id);
 device_unregister(&scmi_dev->dev);
}
