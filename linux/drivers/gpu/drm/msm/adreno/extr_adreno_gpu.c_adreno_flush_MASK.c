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
struct msm_ringbuffer {int /*<<< orphan*/  next; int /*<<< orphan*/  cur; } ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ADRENO_CP_RB_WPTR ; 
 int /*<<< orphan*/  FUNC0 (struct adreno_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

void FUNC4(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	uint32_t wptr;

	/* Copy the shadow to the actual register */
	ring->cur = ring->next;

	/*
	 * Mask wptr value that we calculate to fit in the HW range. This is
	 * to account for the possibility that the last command fit exactly into
	 * the ringbuffer and rb->next hasn't wrapped to zero yet
	 */
	wptr = FUNC1(ring);

	/* ensure writes to ringbuffer have hit system memory: */
	FUNC2();

	FUNC0(adreno_gpu, REG_ADRENO_CP_RB_WPTR, wptr);
}