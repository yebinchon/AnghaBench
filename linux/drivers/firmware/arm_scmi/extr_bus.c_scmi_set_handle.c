
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_device {int dev; int handle; } ;


 int scmi_handle_get (int *) ;

void scmi_set_handle(struct scmi_device *scmi_dev)
{
 scmi_dev->handle = scmi_handle_get(&scmi_dev->dev);
}
