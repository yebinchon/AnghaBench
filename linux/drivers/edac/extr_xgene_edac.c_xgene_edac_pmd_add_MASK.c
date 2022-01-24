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
typedef  int u32 ;
struct xgene_edac_pmd_ctx {char* name; int pmd; int version; int /*<<< orphan*/  next; int /*<<< orphan*/  pmd_csr; int /*<<< orphan*/  ddev; struct edac_device_ctl_info* edac_dev; struct xgene_edac* edac; } ;
struct xgene_edac {int /*<<< orphan*/ * dev; int /*<<< orphan*/  pmds; int /*<<< orphan*/  efuse_map; } ;
struct resource {int dummy; } ;
struct edac_device_ctl_info {char* ctl_name; char* dev_name; int /*<<< orphan*/  op_state; int /*<<< orphan*/  edac_check; int /*<<< orphan*/  mod_name; int /*<<< orphan*/ * dev; struct xgene_edac_pmd_ctx* pvt_info; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  edac_name ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_MOD_STR ; 
 scalar_t__ EDAC_OPSTATE_INT ; 
 scalar_t__ EDAC_OPSTATE_POLL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_RUNNING_INTERRUPT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int (*) (struct xgene_edac*,struct device_node*,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int (*) (struct xgene_edac*,struct device_node*,int)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int (*) (struct xgene_edac*,struct device_node*,int)) ; 
 int FUNC8 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC9 (int,char*,int,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct edac_device_ctl_info*) ; 
 scalar_t__ edac_op_state ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC14 (struct device_node*,char*,int*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  xgene_edac_pmd_check ; 
 int /*<<< orphan*/  FUNC18 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct edac_device_ctl_info*,int) ; 

__attribute__((used)) static int FUNC20(struct xgene_edac *edac, struct device_node *np,
			      int version)
{
	struct edac_device_ctl_info *edac_dev;
	struct xgene_edac_pmd_ctx *ctx;
	struct resource res;
	char edac_name[10];
	u32 pmd;
	int rc;
	u32 val;

	if (!FUNC5(edac->dev, xgene_edac_pmd_add, GFP_KERNEL))
		return -ENOMEM;

	/* Determine if this PMD is disabled */
	if (FUNC14(np, "pmd-controller", &pmd)) {
		FUNC2(edac->dev, "no pmd-controller property\n");
		rc = -ENODEV;
		goto err_group;
	}
	rc = FUNC15(edac->efuse_map, 0, &val);
	if (rc)
		goto err_group;
	if (!FUNC17(val, pmd)) {
		rc = -ENODEV;
		goto err_group;
	}

	FUNC16(edac_name, sizeof(edac_name), "l2c%d", pmd);
	edac_dev = FUNC9(sizeof(*ctx),
					      edac_name, 1, "l2c", 1, 2, NULL,
					      0, FUNC10());
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

	rc = FUNC13(np, 0, &res);
	if (rc < 0) {
		FUNC2(edac->dev, "no PMD resource address\n");
		goto err_free;
	}
	ctx->pmd_csr = FUNC4(edac->dev, &res);
	if (FUNC0(ctx->pmd_csr)) {
		FUNC2(edac->dev,
			"devm_ioremap_resource failed for PMD resource address\n");
		rc = FUNC1(ctx->pmd_csr);
		goto err_free;
	}

	if (edac_op_state == EDAC_OPSTATE_POLL)
		edac_dev->edac_check = xgene_edac_pmd_check;

	FUNC18(edac_dev);

	rc = FUNC8(edac_dev);
	if (rc > 0) {
		FUNC2(edac->dev, "edac_device_add_device failed\n");
		rc = -ENOMEM;
		goto err_free;
	}

	if (edac_op_state == EDAC_OPSTATE_INT)
		edac_dev->op_state = OP_RUNNING_INTERRUPT;

	FUNC12(&ctx->next, &edac->pmds);

	FUNC19(edac_dev, 1);

	FUNC7(edac->dev, xgene_edac_pmd_add);

	FUNC3(edac->dev, "X-Gene EDAC PMD%d registered\n", ctx->pmd);
	return 0;

err_free:
	FUNC11(edac_dev);
err_group:
	FUNC6(edac->dev, xgene_edac_pmd_add);
	return rc;
}