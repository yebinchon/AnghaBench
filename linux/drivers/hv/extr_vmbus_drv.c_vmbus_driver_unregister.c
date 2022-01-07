
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int driver; int name; } ;


 int driver_unregister (int *) ;
 int pr_info (char*,int ) ;
 int vmbus_exists () ;
 int vmbus_free_dynids (struct hv_driver*) ;

void vmbus_driver_unregister(struct hv_driver *hv_driver)
{
 pr_info("unregistering driver %s\n", hv_driver->name);

 if (!vmbus_exists()) {
  driver_unregister(&hv_driver->driver);
  vmbus_free_dynids(hv_driver);
 }
}
