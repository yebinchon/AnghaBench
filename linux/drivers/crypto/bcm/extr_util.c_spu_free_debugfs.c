
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;
 TYPE_1__ iproc_priv ;

void spu_free_debugfs(void)
{
 debugfs_remove_recursive(iproc_priv.debugfs_dir);
 iproc_priv.debugfs_dir = ((void*)0);
}
