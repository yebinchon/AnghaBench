#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dpu_vbif_set_qos_params {scalar_t__ vbif_idx; int /*<<< orphan*/  clk_ctrl; int /*<<< orphan*/  xin_id; scalar_t__ is_rt; } ;
struct dpu_vbif_qos_tbl {int npriority_lvl; int /*<<< orphan*/ * priority_lvl; } ;
struct dpu_kms {struct dpu_hw_vbif** hw_vbif; struct dpu_hw_mdp* hw_mdp; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_qos_remap ) (struct dpu_hw_vbif*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_2__ ops; TYPE_1__* cap; } ;
struct TYPE_6__ {int (* setup_clk_force_ctrl ) (struct dpu_hw_mdp*,int /*<<< orphan*/ ,int) ;} ;
struct dpu_hw_mdp {TYPE_3__ ops; } ;
struct TYPE_4__ {struct dpu_vbif_qos_tbl qos_nrt_tbl; struct dpu_vbif_qos_tbl qos_rt_tbl; } ;

/* Variables and functions */
 int FUNC0 (struct dpu_hw_vbif**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct dpu_hw_mdp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_hw_vbif*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dpu_hw_mdp*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct dpu_kms *dpu_kms,
		struct dpu_vbif_set_qos_params *params)
{
	struct dpu_hw_vbif *vbif = NULL;
	struct dpu_hw_mdp *mdp;
	bool forced_on = false;
	const struct dpu_vbif_qos_tbl *qos_tbl;
	int i;

	if (!dpu_kms || !params || !dpu_kms->hw_mdp) {
		FUNC2("invalid arguments\n");
		return;
	}
	mdp = dpu_kms->hw_mdp;

	for (i = 0; i < FUNC0(dpu_kms->hw_vbif); i++) {
		if (dpu_kms->hw_vbif[i] &&
				dpu_kms->hw_vbif[i]->idx == params->vbif_idx) {
			vbif = dpu_kms->hw_vbif[i];
			break;
		}
	}

	if (!vbif || !vbif->cap) {
		FUNC2("invalid vbif %d\n", params->vbif_idx);
		return;
	}

	if (!vbif->ops.set_qos_remap || !mdp->ops.setup_clk_force_ctrl) {
		FUNC1("qos remap not supported\n");
		return;
	}

	qos_tbl = params->is_rt ? &vbif->cap->qos_rt_tbl :
			&vbif->cap->qos_nrt_tbl;

	if (!qos_tbl->npriority_lvl || !qos_tbl->priority_lvl) {
		FUNC1("qos tbl not defined\n");
		return;
	}

	forced_on = mdp->ops.setup_clk_force_ctrl(mdp, params->clk_ctrl, true);

	for (i = 0; i < qos_tbl->npriority_lvl; i++) {
		FUNC1("vbif:%d xin:%d lvl:%d/%d\n",
				params->vbif_idx, params->xin_id, i,
				qos_tbl->priority_lvl[i]);
		vbif->ops.set_qos_remap(vbif, params->xin_id, i,
				qos_tbl->priority_lvl[i]);
	}

	if (forced_on)
		mdp->ops.setup_clk_force_ctrl(mdp, params->clk_ctrl, false);
}