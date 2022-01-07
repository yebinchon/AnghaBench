
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {scalar_t__ match; } ;
struct device_driver {int dummy; } ;


 int __hid_bus_reprobe_drivers ;
 int bus_for_each_dev (int *,int *,struct hid_driver*,int ) ;
 int hid_bus_type ;
 struct hid_driver* to_hid_driver (struct device_driver*) ;

__attribute__((used)) static int __hid_bus_driver_added(struct device_driver *drv, void *data)
{
 struct hid_driver *hdrv = to_hid_driver(drv);

 if (hdrv->match) {
  bus_for_each_dev(&hid_bus_type, ((void*)0), hdrv,
     __hid_bus_reprobe_drivers);
 }

 return 0;
}
