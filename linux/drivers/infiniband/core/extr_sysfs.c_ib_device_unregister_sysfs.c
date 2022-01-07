
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct ib_device {int coredev; int hw_stats; scalar_t__ hw_stats_ag; TYPE_1__ dev; } ;


 int free_hsag (int *,scalar_t__) ;
 int ib_free_port_attrs (int *) ;
 int kfree (int ) ;

void ib_device_unregister_sysfs(struct ib_device *device)
{
 if (device->hw_stats_ag)
  free_hsag(&device->dev.kobj, device->hw_stats_ag);
 kfree(device->hw_stats);

 ib_free_port_attrs(&device->coredev);
}
