
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_ctx ;
struct xgene_edac_mc_ctx {char* name; int next; struct mem_ctl_info* mci; int mcu_id; int mcu_csr; struct xgene_edac* edac; } ;
struct xgene_edac {int dev; int mcus; } ;
struct resource {int dummy; } ;
struct mem_ctl_info {char* ctl_name; char* dev_name; int mtype_cap; int edac_check; int scrub_mode; int scrub_cap; int * ctl_page_to_phys; int mod_name; void* edac_cap; void* edac_ctl_cap; int dev; int * pdev; struct xgene_edac_mc_ctx* pvt_info; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int type; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct edac_mc_layer*) ;
 void* EDAC_FLAG_SECDED ;
 int EDAC_MC_LAYER_CHANNEL ;
 int EDAC_MC_LAYER_CHIP_SELECT ;
 int EDAC_MOD_STR ;
 scalar_t__ EDAC_OPSTATE_POLL ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MEM_FLAG_DDR ;
 int MEM_FLAG_DDR2 ;
 int MEM_FLAG_DDR3 ;
 int MEM_FLAG_RDDR ;
 int MEM_FLAG_RDDR2 ;
 int MEM_FLAG_RDDR3 ;
 int PTR_ERR (int ) ;
 int SCRUB_FLAG_HW_SRC ;
 int SCRUB_HW_SRC ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int devm_ioremap_resource (int ,struct resource*) ;
 int devres_open_group (int ,int (*) (struct xgene_edac*,struct device_node*),int ) ;
 int devres_release_group (int ,int (*) (struct xgene_edac*,struct device_node*)) ;
 int devres_remove_group (int ,int (*) (struct xgene_edac*,struct device_node*)) ;
 scalar_t__ edac_mc_add_mc (struct mem_ctl_info*) ;
 struct mem_ctl_info* edac_mc_alloc (int ,int ,struct edac_mc_layer*,int) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 scalar_t__ edac_op_state ;
 int list_add (int *,int *) ;
 int memset (struct xgene_edac_mc_ctx*,int ,int) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int xgene_edac_mc_check ;
 int xgene_edac_mc_create_debugfs_node (struct mem_ctl_info*) ;
 int xgene_edac_mc_irq_ctl (struct mem_ctl_info*,int) ;
 int xgene_edac_mc_is_active (struct xgene_edac_mc_ctx*,int ) ;

__attribute__((used)) static int xgene_edac_mc_add(struct xgene_edac *edac, struct device_node *np)
{
 struct mem_ctl_info *mci;
 struct edac_mc_layer layers[2];
 struct xgene_edac_mc_ctx tmp_ctx;
 struct xgene_edac_mc_ctx *ctx;
 struct resource res;
 int rc;

 memset(&tmp_ctx, 0, sizeof(tmp_ctx));
 tmp_ctx.edac = edac;

 if (!devres_open_group(edac->dev, xgene_edac_mc_add, GFP_KERNEL))
  return -ENOMEM;

 rc = of_address_to_resource(np, 0, &res);
 if (rc < 0) {
  dev_err(edac->dev, "no MCU resource address\n");
  goto err_group;
 }
 tmp_ctx.mcu_csr = devm_ioremap_resource(edac->dev, &res);
 if (IS_ERR(tmp_ctx.mcu_csr)) {
  dev_err(edac->dev, "unable to map MCU resource\n");
  rc = PTR_ERR(tmp_ctx.mcu_csr);
  goto err_group;
 }


 if (of_property_read_u32(np, "memory-controller", &tmp_ctx.mcu_id)) {
  dev_err(edac->dev, "no memory-controller property\n");
  rc = -ENODEV;
  goto err_group;
 }
 if (!xgene_edac_mc_is_active(&tmp_ctx, tmp_ctx.mcu_id)) {
  rc = -ENODEV;
  goto err_group;
 }

 layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
 layers[0].size = 4;
 layers[0].is_virt_csrow = 1;
 layers[1].type = EDAC_MC_LAYER_CHANNEL;
 layers[1].size = 2;
 layers[1].is_virt_csrow = 0;
 mci = edac_mc_alloc(tmp_ctx.mcu_id, ARRAY_SIZE(layers), layers,
       sizeof(*ctx));
 if (!mci) {
  rc = -ENOMEM;
  goto err_group;
 }

 ctx = mci->pvt_info;
 *ctx = tmp_ctx;
 ctx->name = "xgene_edac_mc_err";
 ctx->mci = mci;
 mci->pdev = &mci->dev;
 mci->ctl_name = ctx->name;
 mci->dev_name = ctx->name;

 mci->mtype_cap = MEM_FLAG_RDDR | MEM_FLAG_RDDR2 | MEM_FLAG_RDDR3 |
    MEM_FLAG_DDR | MEM_FLAG_DDR2 | MEM_FLAG_DDR3;
 mci->edac_ctl_cap = EDAC_FLAG_SECDED;
 mci->edac_cap = EDAC_FLAG_SECDED;
 mci->mod_name = EDAC_MOD_STR;
 mci->ctl_page_to_phys = ((void*)0);
 mci->scrub_cap = SCRUB_FLAG_HW_SRC;
 mci->scrub_mode = SCRUB_HW_SRC;

 if (edac_op_state == EDAC_OPSTATE_POLL)
  mci->edac_check = xgene_edac_mc_check;

 if (edac_mc_add_mc(mci)) {
  dev_err(edac->dev, "edac_mc_add_mc failed\n");
  rc = -EINVAL;
  goto err_free;
 }

 xgene_edac_mc_create_debugfs_node(mci);

 list_add(&ctx->next, &edac->mcus);

 xgene_edac_mc_irq_ctl(mci, 1);

 devres_remove_group(edac->dev, xgene_edac_mc_add);

 dev_info(edac->dev, "X-Gene EDAC MC registered\n");
 return 0;

err_free:
 edac_mc_free(mci);
err_group:
 devres_release_group(edac->dev, xgene_edac_mc_add);
 return rc;
}
