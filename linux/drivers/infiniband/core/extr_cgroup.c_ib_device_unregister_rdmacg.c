
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int cg_device; } ;


 int rdmacg_unregister_device (int *) ;

void ib_device_unregister_rdmacg(struct ib_device *device)
{
 rdmacg_unregister_device(&device->cg_device);
}
