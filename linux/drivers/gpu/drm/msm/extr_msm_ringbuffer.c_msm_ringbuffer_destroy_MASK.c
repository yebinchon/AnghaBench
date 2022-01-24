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
struct msm_ringbuffer {TYPE_1__* gpu; int /*<<< orphan*/  bo; int /*<<< orphan*/  fctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  aspace; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct msm_ringbuffer *ring)
{
	if (FUNC0(ring))
		return;

	FUNC2(ring->fctx);

	FUNC3(ring->bo, ring->gpu->aspace, false);

	FUNC1(ring);
}