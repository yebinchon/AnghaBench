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
struct msm_display_topology {int num_intf; } ;
struct dpu_rm_hw_iter {struct dpu_rm_hw_blk* blk; } ;
struct dpu_rm_hw_blk {int /*<<< orphan*/  id; int /*<<< orphan*/  enc_id; int /*<<< orphan*/  hw; } ;
struct dpu_rm {int dummy; } ;
struct dpu_hw_ctl {TYPE_1__* caps; } ;
typedef  int /*<<< orphan*/  ctls ;
struct TYPE_2__ {unsigned long features; } ;

/* Variables and functions */
 int FUNC0 (struct dpu_rm_hw_blk**) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPU_CTL_SPLIT_DISPLAY ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DPU_HW_BLK_CTL ; 
 int ENAVAIL ; 
 int MAX_BLOCKS ; 
 scalar_t__ FUNC3 (struct dpu_rm_hw_blk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dpu_rm*,struct dpu_rm_hw_iter*) ; 
 int FUNC5 (struct msm_display_topology const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpu_rm_hw_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dpu_rm_hw_blk***,int /*<<< orphan*/ ,int) ; 
 struct dpu_hw_ctl* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
		struct dpu_rm *rm,
		uint32_t enc_id,
		const struct msm_display_topology *top)
{
	struct dpu_rm_hw_blk *ctls[MAX_BLOCKS];
	struct dpu_rm_hw_iter iter;
	int i = 0, num_ctls = 0;
	bool needs_split_display = false;

	FUNC7(&ctls, 0, sizeof(ctls));

	/* each hw_intf needs its own hw_ctrl to program its control path */
	num_ctls = top->num_intf;

	needs_split_display = FUNC5(top);

	FUNC6(&iter, 0, DPU_HW_BLK_CTL);
	while (FUNC4(rm, &iter)) {
		const struct dpu_hw_ctl *ctl = FUNC8(iter.blk->hw);
		unsigned long features = ctl->caps->features;
		bool has_split_display;

		if (FUNC3(iter.blk, enc_id))
			continue;

		has_split_display = FUNC1(DPU_CTL_SPLIT_DISPLAY) & features;

		FUNC2("ctl %d caps 0x%lX\n", iter.blk->id, features);

		if (needs_split_display != has_split_display)
			continue;

		ctls[i] = iter.blk;
		FUNC2("ctl %d match\n", iter.blk->id);

		if (++i == num_ctls)
			break;
	}

	if (i != num_ctls)
		return -ENAVAIL;

	for (i = 0; i < FUNC0(ctls) && i < num_ctls; i++) {
		ctls[i]->enc_id = enc_id;
		FUNC9(ctls[i]->id, enc_id);
	}

	return 0;
}