
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int * pwrmon_rails; int debugfs_dentry; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void gb_svc_debugfs_exit(struct gb_svc *svc)
{
 debugfs_remove_recursive(svc->debugfs_dentry);
 kfree(svc->pwrmon_rails);
 svc->pwrmon_rails = ((void*)0);
}
