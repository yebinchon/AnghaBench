#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_uc {int dummy; } ;
struct intel_gt {TYPE_1__* i915; struct intel_uncore* uncore; } ;
struct TYPE_3__ {int /*<<< orphan*/  wopcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_GUC_WOPCM_OFFSET ; 
 int E2BIG ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GUC_WOPCM_OFFSET_MASK ; 
 int GUC_WOPCM_OFFSET_VALID ; 
 int /*<<< orphan*/  GUC_WOPCM_SIZE ; 
 int GUC_WOPCM_SIZE_LOCKED ; 
 int GUC_WOPCM_SIZE_MASK ; 
 int HUC_LOADING_AGENT_GUC ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc*) ; 
 scalar_t__ FUNC5 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_uncore*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 struct intel_gt* FUNC10 (struct intel_uc*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct intel_uc *uc)
{
	struct intel_gt *gt = FUNC10(uc);
	struct intel_uncore *uncore = gt->uncore;
	u32 base = FUNC8(&gt->i915->wopcm);
	u32 size = FUNC9(&gt->i915->wopcm);
	u32 huc_agent = FUNC5(uc) ? HUC_LOADING_AGENT_GUC : 0;
	u32 mask;
	int err;

	if (FUNC11(!base || !size)) {
		FUNC3(gt->i915, "Unsuccessful WOPCM partitioning\n");
		return -E2BIG;
	}

	FUNC0(!FUNC4(uc));
	FUNC0(!(base & GUC_WOPCM_OFFSET_MASK));
	FUNC0(base & ~GUC_WOPCM_OFFSET_MASK);
	FUNC0(!(size & GUC_WOPCM_SIZE_MASK));
	FUNC0(size & ~GUC_WOPCM_SIZE_MASK);

	err = FUNC1(gt->i915, -ENXIO);
	if (err)
		return err;

	mask = GUC_WOPCM_SIZE_MASK | GUC_WOPCM_SIZE_LOCKED;
	err = FUNC7(uncore, GUC_WOPCM_SIZE, size, mask,
					    size | GUC_WOPCM_SIZE_LOCKED);
	if (err)
		goto err_out;

	mask = GUC_WOPCM_OFFSET_MASK | GUC_WOPCM_OFFSET_VALID | huc_agent;
	err = FUNC7(uncore, DMA_GUC_WOPCM_OFFSET,
					    base | huc_agent, mask,
					    base | huc_agent |
					    GUC_WOPCM_OFFSET_VALID);
	if (err)
		goto err_out;

	return 0;

err_out:
	FUNC3(gt->i915, "Failed to init uC WOPCM registers!\n");
	FUNC3(gt->i915, "%s(%#x)=%#x\n", "DMA_GUC_WOPCM_OFFSET",
			 FUNC2(DMA_GUC_WOPCM_OFFSET),
			 FUNC6(uncore, DMA_GUC_WOPCM_OFFSET));
	FUNC3(gt->i915, "%s(%#x)=%#x\n", "GUC_WOPCM_SIZE",
			 FUNC2(GUC_WOPCM_SIZE),
			 FUNC6(uncore, GUC_WOPCM_SIZE));

	return err;
}