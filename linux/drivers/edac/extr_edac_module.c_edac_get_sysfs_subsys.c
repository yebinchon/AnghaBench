
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {int dummy; } ;


 struct bus_type edac_subsys ;

struct bus_type *edac_get_sysfs_subsys(void)
{
 return &edac_subsys;
}
