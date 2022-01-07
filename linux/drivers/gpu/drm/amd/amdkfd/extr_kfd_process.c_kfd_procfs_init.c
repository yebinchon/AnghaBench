
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int kobj; } ;


 int kfd_alloc_struct (int ) ;
 TYPE_2__* kfd_device ;
 int kfd_procfs_shutdown () ;
 int kobject_init_and_add (int ,int *,int *,char*) ;
 int pr_warn (char*) ;
 TYPE_1__ procfs ;
 int procfs_type ;

void kfd_procfs_init(void)
{
 int ret = 0;

 procfs.kobj = kfd_alloc_struct(procfs.kobj);
 if (!procfs.kobj)
  return;

 ret = kobject_init_and_add(procfs.kobj, &procfs_type,
       &kfd_device->kobj, "proc");
 if (ret) {
  pr_warn("Could not create procfs proc folder");

  kfd_procfs_shutdown();
 }
}
