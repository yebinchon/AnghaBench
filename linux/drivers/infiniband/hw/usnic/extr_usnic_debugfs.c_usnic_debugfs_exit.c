
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int *) ;
 int * debugfs_root ;

void usnic_debugfs_exit(void)
{
 debugfs_remove_recursive(debugfs_root);
 debugfs_root = ((void*)0);
}
