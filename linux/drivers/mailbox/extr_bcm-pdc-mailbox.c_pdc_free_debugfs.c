
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * debugfs_dir ;
 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void pdc_free_debugfs(void)
{
 debugfs_remove_recursive(debugfs_dir);
 debugfs_dir = ((void*)0);
}
