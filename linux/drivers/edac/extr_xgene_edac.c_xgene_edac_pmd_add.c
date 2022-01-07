
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_edac_pmd_ctx {char* name; int pmd; int version; int next; int pmd_csr; int ddev; struct edac_device_ctl_info* edac_dev; struct xgene_edac* edac; } ;
struct xgene_edac {int * dev; int pmds; int efuse_map; } ;
struct resource {int dummy; } ;
struct edac_device_ctl_info {char* ctl_name; char* dev_name; int op_state; int edac_check; int mod_name; int * dev; struct xgene_edac_pmd_ctx* pvt_info; } ;
struct device_node {int dummy; } ;
typedef int edac_name ;


 int EDAC_MOD_STR ;
 scalar_t__ EDAC_OPSTATE_INT ;
 scalar_t__ EDAC_OPSTATE_POLL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int OP_RUNNING_INTERRUPT ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devres_open_group (int *,int (*) (struct xgene_edac*,struct device_node*,int),int ) ;
 int devres_release_group (int *,int (*) (struct xgene_edac*,struct device_node*,int)) ;
 int devres_remove_group (int *,int (*) (struct xgene_edac*,struct device_node*,int)) ;
 int edac_device_add_device (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* edac_device_alloc_ctl_info (int,char*,int,char*,int,int,int *,int ,int ) ;
 int edac_device_alloc_index () ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 scalar_t__ edac_op_state ;
 int list_add (int *,int *) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int regmap_read (int ,int ,int*) ;
 int snprintf (char*,int,char*,int) ;
 int xgene_edac_pmd_available (int,int) ;
 int xgene_edac_pmd_check ;
 int xgene_edac_pmd_create_debugfs_nodes (struct edac_device_ctl_info*) ;
 int xgene_edac_pmd_hw_ctl (struct edac_device_ctl_info*,int) ;

__attribute__((used)) static int xgene_edac_pmd_add(struct xgene_edac *edac, struct device_node *np,
         int version)
{
 struct edac_device_ctl_info *edac_dev;
 struct xgene_edac_pmd_ctx *ctx;
 struct resource res;
 char edac_name[10];
 u32 pmd;
 int rc;
 u32 val;

 if (!devres_open_group(edac->dev, xgene_edac_pmd_add, GFP_KERNEL))
  return -ENOMEM;


 if (of_property_read_u32(np, "pmd-controller", &pmd)) {
  dev_err(edac->dev, "no pmd-controller property\n");
  rc = -ENODEV;
  goto err_group;
 }
 rc = regmap_read(edac->efuse_map, 0, &val);
 if (rc)
  goto err_group;
 if (!xgene_edac_pmd_available(val, pmd)) {
  rc = -ENODEV;
  goto err_group;
 }

 snprintf(edac_name, sizeof(edac_name), "l2c%d", pmd);
 edac_dev = edac_device_alloc_ctl_info(sizeof(*ctx),
           edac_name, 1, "l2c", 1, 2, ((void*)0),
           0, edac_device_alloc_index());
 if (!edac_dev) {
  rc = -ENOMEM;
  goto err_group;
 }

 ctx = edac_dev->pvt_info;
 ctx->name = "xgene_pmd_err";
 ctx->pmd = pmd;
 ctx->edac = edac;
 ctx->edac_dev = edac_dev;
 ctx->ddev = *edac->dev;
 ctx->version = version;
 edac_dev->dev = &ctx->ddev;
 edac_dev->ctl_name = ctx->name;
 edac_dev->dev_name = ctx->name;
 edac_dev->mod_name = EDAC_MOD_STR;

 rc = of_address_to_resource(np, 0, &res);
 if (rc < 0) {
  dev_err(edac->dev, "no PMD resource address\n");
  goto err_free;
 }
 ctx->pmd_csr = devm_ioremap_resource(edac->dev, &res);
 if (IS_ERR(ctx->pmd_csr)) {
  dev_err(edac->dev,
   "devm_ioremap_resource failed for PMD resource address\n");
  rc = PTR_ERR(ctx->pmd_csr);
  goto err_free;
 }

 if (edac_op_state == EDAC_OPSTATE_POLL)
  edac_dev->edac_check = xgene_edac_pmd_check;

 xgene_edac_pmd_create_debugfs_nodes(edac_dev);

 rc = edac_device_add_device(edac_dev);
 if (rc > 0) {
  dev_err(edac->dev, "edac_device_add_device failed\n");
  rc = -ENOMEM;
  goto err_free;
 }

 if (edac_op_state == EDAC_OPSTATE_INT)
  edac_dev->op_state = OP_RUNNING_INTERRUPT;

 list_add(&ctx->next, &edac->pmds);

 xgene_edac_pmd_hw_ctl(edac_dev, 1);

 devres_remove_group(edac->dev, xgene_edac_pmd_add);

 dev_info(edac->dev, "X-Gene EDAC PMD%d registered\n", ctx->pmd);
 return 0;

err_free:
 edac_device_free_ctl_info(edac_dev);
err_group:
 devres_release_group(edac->dev, xgene_edac_pmd_add);
 return rc;
}
