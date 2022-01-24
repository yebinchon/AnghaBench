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
typedef  scalar_t__ u32 ;
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {int /*<<< orphan*/  name; TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int gpmu_dwords; int /*<<< orphan*/  gpmu_iova; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CP_INDIRECT_BUFFER_PFE ; 
 int /*<<< orphan*/  CP_SET_PROTECTED_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_ringbuffer*,int) ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_CM3_SYSRESET ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GENERAL_0 ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GENERAL_1 ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_WFI_CONFIG ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 scalar_t__ FUNC4 (struct adreno_gpu*) ; 
 scalar_t__ FUNC5 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct msm_gpu*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 struct a5xx_gpu* FUNC10 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC11 (struct msm_gpu*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC11(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC10(adreno_gpu);
	struct msm_ringbuffer *ring = gpu->rb[0];

	if (!a5xx_gpu->gpmu_dwords)
		return 0;

	/* Turn off protected mode for this operation */
	FUNC1(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC2(ring, 0);

	/* Kick off the IB to load the GPMU microcode */
	FUNC1(ring, CP_INDIRECT_BUFFER_PFE, 3);
	FUNC2(ring, FUNC7(a5xx_gpu->gpmu_iova));
	FUNC2(ring, FUNC12(a5xx_gpu->gpmu_iova));
	FUNC2(ring, a5xx_gpu->gpmu_dwords);

	/* Turn back on protected mode */
	FUNC1(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC2(ring, 1);

	gpu->funcs->flush(gpu, ring);

	if (!FUNC3(gpu, ring)) {
		FUNC0("%s: Unable to load GPMU firmware. GPMU will not be active\n",
			gpu->name);
		return -EINVAL;
	}

	if (FUNC4(adreno_gpu))
		FUNC6(gpu, REG_A5XX_GPMU_WFI_CONFIG, 0x4014);

	/* Kick off the GPMU */
	FUNC6(gpu, REG_A5XX_GPMU_CM3_SYSRESET, 0x0);

	/*
	 * Wait for the GPMU to respond. It isn't fatal if it doesn't, we just
	 * won't have advanced power collapse.
	 */
	if (FUNC8(gpu, 25, REG_A5XX_GPMU_GENERAL_0, 0xFFFFFFFF,
		0xBABEFACE))
		FUNC0("%s: GPMU firmware initialization timed out\n",
			gpu->name);

	if (!FUNC4(adreno_gpu)) {
		u32 val = FUNC5(gpu, REG_A5XX_GPMU_GENERAL_1);

		if (val)
			FUNC0("%s: GPMU firmware initialization failed: %d\n",
				  gpu->name, val);
	}

	return 0;
}