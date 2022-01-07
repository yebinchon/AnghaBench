
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int rmi_device_type ;

bool rmi_is_physical_device(struct device *dev)
{
 return dev->type == &rmi_device_type;
}
