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
struct msm_fence_context {int /*<<< orphan*/  event; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  completed_fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct msm_fence_context *fctx, uint32_t fence)
{
	FUNC1(&fctx->spinlock);
	fctx->completed_fence = FUNC0(fence, fctx->completed_fence);
	FUNC2(&fctx->spinlock);

	FUNC3(&fctx->event);
}