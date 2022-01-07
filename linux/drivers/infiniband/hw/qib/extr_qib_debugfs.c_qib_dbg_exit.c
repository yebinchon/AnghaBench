
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * qib_dbg_root ;

void qib_dbg_exit(void)
{
 debugfs_remove_recursive(qib_dbg_root);
 qib_dbg_root = ((void*)0);
}
