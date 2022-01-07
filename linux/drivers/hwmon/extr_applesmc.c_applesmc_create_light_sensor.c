
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_light_sensors; } ;


 int applesmc_create_nodes (int ,int) ;
 int light_sensor_group ;
 TYPE_1__ smcreg ;

__attribute__((used)) static int applesmc_create_light_sensor(void)
{
 if (!smcreg.num_light_sensors)
  return 0;
 return applesmc_create_nodes(light_sensor_group, 1);
}
