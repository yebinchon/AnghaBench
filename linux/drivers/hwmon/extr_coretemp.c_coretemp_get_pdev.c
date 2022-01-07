
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int max_zones ;
 int topology_logical_die_id (unsigned int) ;
 struct platform_device** zone_devices ;

__attribute__((used)) static struct platform_device *coretemp_get_pdev(unsigned int cpu)
{
 int id = topology_logical_die_id(cpu);

 if (id >= 0 && id < max_zones)
  return zone_devices[id];
 return ((void*)0);
}
