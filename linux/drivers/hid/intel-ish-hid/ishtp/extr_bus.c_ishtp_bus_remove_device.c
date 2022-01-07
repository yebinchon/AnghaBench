
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void ishtp_bus_remove_device(struct ishtp_cl_device *device)
{
 device_unregister(&device->dev);
}
