
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int ocrdma_dbgfs_dir ;

void ocrdma_rem_debugfs(void)
{
 debugfs_remove_recursive(ocrdma_dbgfs_dir);
}
