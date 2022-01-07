
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct ib_device {TYPE_1__ cg_device; int name; } ;


 int rdmacg_register_device (TYPE_1__*) ;

void ib_device_register_rdmacg(struct ib_device *device)
{
 device->cg_device.name = device->name;
 rdmacg_register_device(&device->cg_device);
}
