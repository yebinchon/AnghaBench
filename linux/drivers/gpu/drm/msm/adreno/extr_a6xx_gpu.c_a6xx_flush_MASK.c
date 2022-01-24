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

/* Variables and functions */
 int /*<<< orphan*/  REG_A6XX_CP_RB_WPTR ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
	uint32_t wptr;
	unsigned long flags;

	FUNC3(&ring->lock, flags);

	/* Copy the shadow to the actual register */
	ring->cur = ring->next;

	/* Make sure to wrap wptr if we need to */
	wptr = FUNC0(ring);

	FUNC4(&ring->lock, flags);

	/* Make sure everything is posted before making a decision */
	FUNC2();

	FUNC1(gpu, REG_A6XX_CP_RB_WPTR, wptr);
}