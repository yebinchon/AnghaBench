
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ibdev {int * hfi1_ibdev_dbg; int hfi1_ibdev_link; } ;


 int debugfs_remove (int ) ;
 int debugfs_remove_recursive (int *) ;
 int hfi1_dbg_root ;
 int hfi1_fault_exit_debugfs (struct hfi1_ibdev*) ;

void hfi1_dbg_ibdev_exit(struct hfi1_ibdev *ibd)
{
 if (!hfi1_dbg_root)
  goto out;
 hfi1_fault_exit_debugfs(ibd);
 debugfs_remove(ibd->hfi1_ibdev_link);
 debugfs_remove_recursive(ibd->hfi1_ibdev_dbg);
out:
 ibd->hfi1_ibdev_dbg = ((void*)0);
}
