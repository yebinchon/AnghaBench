
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_driver {struct scmi_device_id* id_table; } ;
struct scmi_device_id {scalar_t__ protocol_id; } ;
struct scmi_device {scalar_t__ protocol_id; } ;



__attribute__((used)) static const struct scmi_device_id *
scmi_dev_match_id(struct scmi_device *scmi_dev, struct scmi_driver *scmi_drv)
{
 const struct scmi_device_id *id = scmi_drv->id_table;

 if (!id)
  return ((void*)0);

 for (; id->protocol_id; id++)
  if (id->protocol_id == scmi_dev->protocol_id)
   return id;

 return ((void*)0);
}
