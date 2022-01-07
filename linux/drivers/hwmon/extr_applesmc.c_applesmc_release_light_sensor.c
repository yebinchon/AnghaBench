
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_light_sensors; } ;


 int applesmc_destroy_nodes (int ) ;
 int light_sensor_group ;
 TYPE_1__ smcreg ;

__attribute__((used)) static void applesmc_release_light_sensor(void)
{
 if (!smcreg.num_light_sensors)
  return;
 applesmc_destroy_nodes(light_sensor_group);
}
