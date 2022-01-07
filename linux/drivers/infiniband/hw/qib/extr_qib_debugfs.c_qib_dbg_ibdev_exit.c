
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_ibdev {int * qib_ibdev_dbg; } ;


 int debugfs_remove_recursive (int *) ;
 int qib_dbg_root ;

void qib_dbg_ibdev_exit(struct qib_ibdev *ibd)
{
 if (!qib_dbg_root)
  goto out;
 debugfs_remove_recursive(ibd->qib_ibdev_dbg);
out:
 ibd->qib_ibdev_dbg = ((void*)0);
}
