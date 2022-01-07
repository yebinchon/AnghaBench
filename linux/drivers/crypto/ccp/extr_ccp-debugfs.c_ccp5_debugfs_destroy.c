
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccp_debugfs_dir ;
 int debugfs_remove_recursive (int ) ;

void ccp5_debugfs_destroy(void)
{
 debugfs_remove_recursive(ccp_debugfs_dir);
}
