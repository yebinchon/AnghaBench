
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_edac_pmd_ctx {int pmd; TYPE_1__* edac; } ;
struct edac_device_ctl_info {struct xgene_edac_pmd_ctx* pvt_info; } ;
struct dentry {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int dfs; } ;


 int CONFIG_EDAC_DEBUG ;
 int IS_ENABLED (int ) ;
 int S_IWUSR ;
 struct dentry* edac_debugfs_create_dir_at (char*,int ) ;
 int edac_debugfs_create_file (char*,int ,struct dentry*,struct edac_device_ctl_info*,int *) ;
 int snprintf (char*,int,char*,int) ;
 int * xgene_edac_pmd_debug_inject_fops ;

__attribute__((used)) static void
xgene_edac_pmd_create_debugfs_nodes(struct edac_device_ctl_info *edac_dev)
{
 struct xgene_edac_pmd_ctx *ctx = edac_dev->pvt_info;
 struct dentry *dbgfs_dir;
 char name[10];

 if (!IS_ENABLED(CONFIG_EDAC_DEBUG) || !ctx->edac->dfs)
  return;

 snprintf(name, sizeof(name), "PMD%d", ctx->pmd);
 dbgfs_dir = edac_debugfs_create_dir_at(name, ctx->edac->dfs);
 if (!dbgfs_dir)
  return;

 edac_debugfs_create_file("l1_inject_ctrl", S_IWUSR, dbgfs_dir, edac_dev,
     &xgene_edac_pmd_debug_inject_fops[0]);
 edac_debugfs_create_file("l2_inject_ctrl", S_IWUSR, dbgfs_dir, edac_dev,
     &xgene_edac_pmd_debug_inject_fops[1]);
}
