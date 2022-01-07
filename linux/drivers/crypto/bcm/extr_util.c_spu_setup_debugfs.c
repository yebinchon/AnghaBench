
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ debugfs_dir; int debugfs_stats; } ;


 int KBUILD_MODNAME ;
 scalar_t__ debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,scalar_t__,TYPE_1__*,int *) ;
 int debugfs_initialized () ;
 TYPE_1__ iproc_priv ;
 int spu_debugfs_stats ;

void spu_setup_debugfs(void)
{
 if (!debugfs_initialized())
  return;

 if (!iproc_priv.debugfs_dir)
  iproc_priv.debugfs_dir = debugfs_create_dir(KBUILD_MODNAME,
           ((void*)0));

 if (!iproc_priv.debugfs_stats)

  debugfs_create_file("stats", 0400, iproc_priv.debugfs_dir,
        &iproc_priv, &spu_debugfs_stats);
}
