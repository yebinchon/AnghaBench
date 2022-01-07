
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct occ {TYPE_1__* bus_dev; } ;
struct TYPE_2__ {int kobj; } ;


 int occ_sysfs ;
 int sysfs_remove_group (int *,int *) ;

void occ_shutdown(struct occ *occ)
{
 sysfs_remove_group(&occ->bus_dev->kobj, &occ_sysfs);
}
