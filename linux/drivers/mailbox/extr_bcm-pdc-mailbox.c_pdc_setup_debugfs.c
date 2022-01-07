
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_state {int pdc_idx; } ;


 int KBUILD_MODNAME ;
 scalar_t__ debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,scalar_t__,struct pdc_state*,int *) ;
 scalar_t__ debugfs_dir ;
 int debugfs_initialized () ;
 int pdc_debugfs_stats ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void pdc_setup_debugfs(struct pdc_state *pdcs)
{
 char spu_stats_name[16];

 if (!debugfs_initialized())
  return;

 snprintf(spu_stats_name, 16, "pdc%d_stats", pdcs->pdc_idx);
 if (!debugfs_dir)
  debugfs_dir = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));


 debugfs_create_file(spu_stats_name, 0400, debugfs_dir, pdcs,
       &pdc_debugfs_stats);
}
