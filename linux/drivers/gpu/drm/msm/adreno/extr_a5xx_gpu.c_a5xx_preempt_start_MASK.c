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
struct msm_ringbuffer {size_t id; } ;
struct msm_gpu {int nr_rings; TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int /*<<< orphan*/ * preempt_iova; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CONTEXT_SWITCH_YIELD ; 
 int /*<<< orphan*/  CP_PREEMPT_ENABLE_GLOBAL ; 
 int /*<<< orphan*/  CP_PREEMPT_ENABLE_LOCAL ; 
 int /*<<< orphan*/  CP_SET_PROTECTED_MODE ; 
 int /*<<< orphan*/  CP_YIELD_ENABLE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_ringbuffer*,int) ; 
 int /*<<< orphan*/  REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO ; 
 scalar_t__ FUNC3 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 struct a5xx_gpu* FUNC6 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC7 (struct msm_gpu*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC7(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC6(adreno_gpu);
	struct msm_ringbuffer *ring = gpu->rb[0];

	if (gpu->nr_rings == 1)
		return 0;

	/* Turn off protected mode to write to special registers */
	FUNC1(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC2(ring, 0);

	/* Set the save preemption record for the ring/command */
	FUNC0(ring, REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, 2);
	FUNC2(ring, FUNC4(a5xx_gpu->preempt_iova[ring->id]));
	FUNC2(ring, FUNC8(a5xx_gpu->preempt_iova[ring->id]));

	/* Turn back on protected mode */
	FUNC1(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC2(ring, 1);

	FUNC1(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
	FUNC2(ring, 0x00);

	FUNC1(ring, CP_PREEMPT_ENABLE_LOCAL, 1);
	FUNC2(ring, 0x01);

	FUNC1(ring, CP_YIELD_ENABLE, 1);
	FUNC2(ring, 0x01);

	/* Yield the floor on command completion */
	FUNC1(ring, CP_CONTEXT_SWITCH_YIELD, 4);
	FUNC2(ring, 0x00);
	FUNC2(ring, 0x00);
	FUNC2(ring, 0x01);
	FUNC2(ring, 0x01);

	gpu->funcs->flush(gpu, ring);

	return FUNC3(gpu, ring) ? 0 : -EINVAL;
}