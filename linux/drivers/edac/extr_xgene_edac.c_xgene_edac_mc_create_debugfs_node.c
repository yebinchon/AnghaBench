
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int debugfs; } ;


 int CONFIG_EDAC_DEBUG ;
 int IS_ENABLED (int ) ;
 int S_IWUSR ;
 int edac_debugfs_create_file (char*,int ,int ,struct mem_ctl_info*,int *) ;
 int xgene_edac_mc_debug_inject_fops ;

__attribute__((used)) static void xgene_edac_mc_create_debugfs_node(struct mem_ctl_info *mci)
{
 if (!IS_ENABLED(CONFIG_EDAC_DEBUG))
  return;

 if (!mci->debugfs)
  return;

 edac_debugfs_create_file("inject_ctrl", S_IWUSR, mci->debugfs, mci,
     &xgene_edac_mc_debug_inject_fops);
}
