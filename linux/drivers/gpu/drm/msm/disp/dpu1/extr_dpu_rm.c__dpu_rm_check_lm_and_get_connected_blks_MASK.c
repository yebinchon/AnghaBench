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
typedef  int /*<<< orphan*/  uint32_t ;
struct dpu_rm_requirements {int dummy; } ;
struct dpu_rm_hw_iter {struct dpu_rm_hw_blk* blk; } ;
struct dpu_rm_hw_blk {scalar_t__ id; int /*<<< orphan*/  hw; } ;
struct dpu_rm {int dummy; } ;
struct dpu_lm_cfg {scalar_t__ id; scalar_t__ pingpong; int /*<<< orphan*/  lm_pair_mask; } ;
struct TYPE_2__ {struct dpu_lm_cfg* cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  DPU_HW_BLK_PINGPONG ; 
 scalar_t__ FUNC2 (struct dpu_rm_hw_blk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dpu_rm*,struct dpu_rm_hw_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_rm_hw_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(
		struct dpu_rm *rm,
		uint32_t enc_id,
		struct dpu_rm_requirements *reqs,
		struct dpu_rm_hw_blk *lm,
		struct dpu_rm_hw_blk **pp,
		struct dpu_rm_hw_blk *primary_lm)
{
	const struct dpu_lm_cfg *lm_cfg = FUNC6(lm->hw)->cap;
	struct dpu_rm_hw_iter iter;

	*pp = NULL;

	FUNC0("check lm %d pp %d\n",
			   lm_cfg->id, lm_cfg->pingpong);

	/* Check if this layer mixer is a peer of the proposed primary LM */
	if (primary_lm) {
		const struct dpu_lm_cfg *prim_lm_cfg =
				FUNC6(primary_lm->hw)->cap;

		if (!FUNC5(lm_cfg->id, &prim_lm_cfg->lm_pair_mask)) {
			FUNC0("lm %d not peer of lm %d\n", lm_cfg->id,
					prim_lm_cfg->id);
			return false;
		}
	}

	/* Already reserved? */
	if (FUNC2(lm, enc_id)) {
		FUNC0("lm %d already reserved\n", lm_cfg->id);
		return false;
	}

	FUNC4(&iter, 0, DPU_HW_BLK_PINGPONG);
	while (FUNC3(rm, &iter)) {
		if (iter.blk->id == lm_cfg->pingpong) {
			*pp = iter.blk;
			break;
		}
	}

	if (!*pp) {
		FUNC1("failed to get pp on lm %d\n", lm_cfg->pingpong);
		return false;
	}

	if (FUNC2(*pp, enc_id)) {
		FUNC0("lm %d pp %d already reserved\n", lm->id,
				(*pp)->id);
		return false;
	}

	return true;
}