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
struct msm_ringbuffer {int /*<<< orphan*/  lock; } ;
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A5XX_CP_RB_WPTR ; 
 int /*<<< orphan*/  FUNC0 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
	unsigned long flags;
	uint32_t wptr;

	if (!ring)
		return;

	FUNC2(&ring->lock, flags);
	wptr = FUNC0(ring);
	FUNC3(&ring->lock, flags);

	FUNC1(gpu, REG_A5XX_CP_RB_WPTR, wptr);
}