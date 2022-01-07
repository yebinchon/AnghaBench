
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct intel_th_driver {TYPE_1__ driver; int remove; int probe; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int intel_th_bus ;

int intel_th_driver_register(struct intel_th_driver *thdrv)
{
 if (!thdrv->probe || !thdrv->remove)
  return -EINVAL;

 thdrv->driver.bus = &intel_th_bus;

 return driver_register(&thdrv->driver);
}
