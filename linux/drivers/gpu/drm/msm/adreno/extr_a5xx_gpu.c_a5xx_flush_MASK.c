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
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_ringbuffer {int /*<<< orphan*/  lock; int /*<<< orphan*/  next; int /*<<< orphan*/  cur; } ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {struct msm_ringbuffer* cur_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A5XX_CP_RB_WPTR ; 
 int /*<<< orphan*/  FUNC0 (struct a5xx_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct a5xx_gpu* FUNC6 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC7 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC8(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
	struct adreno_gpu *adreno_gpu = FUNC7(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC6(adreno_gpu);
	uint32_t wptr;
	unsigned long flags;

	FUNC4(&ring->lock, flags);

	/* Copy the shadow to the actual register */
	ring->cur = ring->next;

	/* Make sure to wrap wptr if we need to */
	wptr = FUNC1(ring);

	FUNC5(&ring->lock, flags);

	/* Make sure everything is posted before making a decision */
	FUNC3();

	/* Update HW if this is the current ring and we are not in preempt */
	if (a5xx_gpu->cur_ring == ring && !FUNC0(a5xx_gpu))
		FUNC2(gpu, REG_A5XX_CP_RB_WPTR, wptr);
}