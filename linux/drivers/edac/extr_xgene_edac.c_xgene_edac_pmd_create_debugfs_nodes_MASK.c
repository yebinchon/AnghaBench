#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgene_edac_pmd_ctx {int pmd; TYPE_1__* edac; } ;
struct edac_device_ctl_info {struct xgene_edac_pmd_ctx* pvt_info; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  dfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EDAC_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_IWUSR ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,struct edac_device_ctl_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * xgene_edac_pmd_debug_inject_fops ; 

__attribute__((used)) static void
FUNC4(struct edac_device_ctl_info *edac_dev)
{
	struct xgene_edac_pmd_ctx *ctx = edac_dev->pvt_info;
	struct dentry *dbgfs_dir;
	char name[10];

	if (!FUNC0(CONFIG_EDAC_DEBUG) || !ctx->edac->dfs)
		return;

	FUNC3(name, sizeof(name), "PMD%d", ctx->pmd);
	dbgfs_dir = FUNC1(name, ctx->edac->dfs);
	if (!dbgfs_dir)
		return;

	FUNC2("l1_inject_ctrl", S_IWUSR, dbgfs_dir, edac_dev,
				 &xgene_edac_pmd_debug_inject_fops[0]);
	FUNC2("l2_inject_ctrl", S_IWUSR, dbgfs_dir, edac_dev,
				 &xgene_edac_pmd_debug_inject_fops[1]);
}