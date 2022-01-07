
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_dir ;
 int debugfs_remove_recursive (int ) ;

void dw_edma_v0_debugfs_off(void)
{
 debugfs_remove_recursive(base_dir);
}
