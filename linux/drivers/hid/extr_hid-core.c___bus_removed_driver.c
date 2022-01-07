
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;


 int bus_rescan_devices (int *) ;
 int hid_bus_type ;

__attribute__((used)) static int __bus_removed_driver(struct device_driver *drv, void *data)
{
 return bus_rescan_devices(&hid_bus_type);
}
