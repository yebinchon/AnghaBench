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
struct TYPE_2__ {int /*<<< orphan*/  seqno; } ;
struct msm_fence {TYPE_1__ base; int /*<<< orphan*/  fctx; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_fence* FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC2(struct dma_fence *fence)
{
	struct msm_fence *f = FUNC1(fence);
	return FUNC0(f->fctx, f->base.seqno);
}