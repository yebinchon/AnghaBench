#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_ctx ;
struct xgene_edac_mc_ctx {char* name; int /*<<< orphan*/  next; struct mem_ctl_info* mci; int /*<<< orphan*/  mcu_id; int /*<<< orphan*/  mcu_csr; struct xgene_edac* edac; } ;
struct xgene_edac {int /*<<< orphan*/  dev; int /*<<< orphan*/  mcus; } ;
struct resource {int dummy; } ;
struct mem_ctl_info {char* ctl_name; char* dev_name; int mtype_cap; int /*<<< orphan*/  edac_check; int /*<<< orphan*/  scrub_mode; int /*<<< orphan*/  scrub_cap; int /*<<< orphan*/ * ctl_page_to_phys; int /*<<< orphan*/  mod_name; void* edac_cap; void* edac_ctl_cap; int /*<<< orphan*/  dev; int /*<<< orphan*/ * pdev; struct xgene_edac_mc_ctx* pvt_info; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edac_mc_layer*) ; 
 void* EDAC_FLAG_SECDED ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_CHANNEL ; 
 int /*<<< orphan*/  EDAC_MC_LAYER_CHIP_SELECT ; 
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 scalar_t__ EDAC_OPSTATE_POLL ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MEM_FLAG_DDR ; 
 int MEM_FLAG_DDR2 ; 
 int MEM_FLAG_DDR3 ; 
 int MEM_FLAG_RDDR ; 
 int MEM_FLAG_RDDR2 ; 
 int MEM_FLAG_RDDR3 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRUB_FLAG_HW_SRC ; 
 int /*<<< orphan*/  SCRUB_HW_SRC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int (*) (struct xgene_edac*,struct device_node*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int (*) (struct xgene_edac*,struct device_node*)) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int (*) (struct xgene_edac*,struct device_node*)) ; 
 scalar_t__ FUNC9 (struct mem_ctl_info*) ; 
 struct mem_ctl_info* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct edac_mc_layer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mem_ctl_info*) ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct xgene_edac_mc_ctx*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC15 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xgene_edac_mc_check ; 
 int /*<<< orphan*/  FUNC16 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct mem_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct xgene_edac_mc_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct xgene_edac *edac, struct device_node *np)
{
	struct mem_ctl_info *mci;
	struct edac_mc_layer layers[2];
	struct xgene_edac_mc_ctx tmp_ctx;
	struct xgene_edac_mc_ctx *ctx;
	struct resource res;
	int rc;

	FUNC13(&tmp_ctx, 0, sizeof(tmp_ctx));
	tmp_ctx.edac = edac;

	if (!FUNC6(edac->dev, xgene_edac_mc_add, GFP_KERNEL))
		return -ENOMEM;

	rc = FUNC14(np, 0, &res);
	if (rc < 0) {
		FUNC3(edac->dev, "no MCU resource address\n");
		goto err_group;
	}
	tmp_ctx.mcu_csr = FUNC5(edac->dev, &res);
	if (FUNC1(tmp_ctx.mcu_csr)) {
		FUNC3(edac->dev, "unable to map MCU resource\n");
		rc = FUNC2(tmp_ctx.mcu_csr);
		goto err_group;
	}

	/* Ignore non-active MCU */
	if (FUNC15(np, "memory-controller", &tmp_ctx.mcu_id)) {
		FUNC3(edac->dev, "no memory-controller property\n");
		rc = -ENODEV;
		goto err_group;
	}
	if (!FUNC18(&tmp_ctx, tmp_ctx.mcu_id)) {
		rc = -ENODEV;
		goto err_group;
	}

	layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
	layers[0].size = 4;
	layers[0].is_virt_csrow = true;
	layers[1].type = EDAC_MC_LAYER_CHANNEL;
	layers[1].size = 2;
	layers[1].is_virt_csrow = false;
	mci = FUNC10(tmp_ctx.mcu_id, FUNC0(layers), layers,
			    sizeof(*ctx));
	if (!mci) {
		rc = -ENOMEM;
		goto err_group;
	}

	ctx = mci->pvt_info;
	*ctx = tmp_ctx;		/* Copy over resource value */
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
	mci->ctl_page_to_phys = NULL;
	mci->scrub_cap = SCRUB_FLAG_HW_SRC;
	mci->scrub_mode = SCRUB_HW_SRC;

	if (edac_op_state == EDAC_OPSTATE_POLL)
		mci->edac_check = xgene_edac_mc_check;

	if (FUNC9(mci)) {
		FUNC3(edac->dev, "edac_mc_add_mc failed\n");
		rc = -EINVAL;
		goto err_free;
	}

	FUNC16(mci);

	FUNC12(&ctx->next, &edac->mcus);

	FUNC17(mci, true);

	FUNC8(edac->dev, xgene_edac_mc_add);

	FUNC4(edac->dev, "X-Gene EDAC MC registered\n");
	return 0;

err_free:
	FUNC11(mci);
err_group:
	FUNC7(edac->dev, xgene_edac_mc_add);
	return rc;
}