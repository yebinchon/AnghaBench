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
struct panfrost_perfcnt {size_t bosize; int /*<<< orphan*/  lock; int /*<<< orphan*/  dump_comp; } ;
struct TYPE_2__ {int mem_features; int /*<<< orphan*/  shader_present; int /*<<< orphan*/  l2_present; } ;
struct panfrost_device {struct panfrost_perfcnt* perfcnt; int /*<<< orphan*/  dev; TYPE_1__ features; } ;

/* Variables and functions */
 unsigned int BLOCKS_PER_COREGROUP ; 
 unsigned int BYTES_PER_COUNTER ; 
 unsigned int COUNTERS_PER_BLOCK ; 
 int ENOMEM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG_MODE_OFF ; 
 int /*<<< orphan*/  GPU_PRFCNT_JM_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_MMU_L2_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_SHADER_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_TILER_EN ; 
 int /*<<< orphan*/  HW_FEATURE_V4 ; 
 struct panfrost_perfcnt* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct panfrost_device*,int /*<<< orphan*/ ) ; 

int FUNC9(struct panfrost_device *pfdev)
{
	struct panfrost_perfcnt *perfcnt;
	size_t size;

	if (FUNC8(pfdev, HW_FEATURE_V4)) {
		unsigned int ncoregroups;

		ncoregroups = FUNC5(pfdev->features.l2_present);
		size = ncoregroups * BLOCKS_PER_COREGROUP *
		       COUNTERS_PER_BLOCK * BYTES_PER_COUNTER;
	} else {
		unsigned int nl2c, ncores;

		/*
		 * TODO: define a macro to extract the number of l2 caches from
		 * mem_features.
		 */
		nl2c = ((pfdev->features.mem_features >> 8) & FUNC0(3, 0)) + 1;

		/*
		 * shader_present might be sparse, but the counters layout
		 * forces to dump unused regions too, hence the fls64() call
		 * instead of hweight64().
		 */
		ncores = FUNC3(pfdev->features.shader_present);

		/*
		 * There's always one JM and one Tiler block, hence the '+ 2'
		 * here.
		 */
		size = (nl2c + ncores + 2) *
		       COUNTERS_PER_BLOCK * BYTES_PER_COUNTER;
	}

	perfcnt = FUNC2(pfdev->dev, sizeof(*perfcnt), GFP_KERNEL);
	if (!perfcnt)
		return -ENOMEM;

	perfcnt->bosize = size;

	/* Start with everything disabled. */
	FUNC4(pfdev, GPU_PERFCNT_CFG,
		  FUNC1(GPU_PERFCNT_CFG_MODE_OFF));
	FUNC4(pfdev, GPU_PRFCNT_JM_EN, 0);
	FUNC4(pfdev, GPU_PRFCNT_SHADER_EN, 0);
	FUNC4(pfdev, GPU_PRFCNT_MMU_L2_EN, 0);
	FUNC4(pfdev, GPU_PRFCNT_TILER_EN, 0);

	FUNC6(&perfcnt->dump_comp);
	FUNC7(&perfcnt->lock);
	pfdev->perfcnt = perfcnt;

	return 0;
}