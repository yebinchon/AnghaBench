
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * kobj; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 TYPE_1__ procfs ;

void kfd_procfs_shutdown(void)
{
 if (procfs.kobj) {
  kobject_del(procfs.kobj);
  kobject_put(procfs.kobj);
  procfs.kobj = ((void*)0);
 }
}
