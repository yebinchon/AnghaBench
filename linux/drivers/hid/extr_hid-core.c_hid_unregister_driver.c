
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_driver {int driver; } ;


 int __bus_removed_driver ;
 int bus_for_each_drv (int *,int *,struct hid_driver*,int ) ;
 int driver_unregister (int *) ;
 int hid_bus_type ;
 int hid_free_dynids (struct hid_driver*) ;

void hid_unregister_driver(struct hid_driver *hdrv)
{
 driver_unregister(&hdrv->driver);
 hid_free_dynids(hdrv);

 bus_for_each_drv(&hid_bus_type, ((void*)0), hdrv, __bus_removed_driver);
}
