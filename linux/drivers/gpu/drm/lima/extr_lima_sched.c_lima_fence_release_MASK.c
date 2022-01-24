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
struct TYPE_2__ {int /*<<< orphan*/  rcu; } ;
struct lima_fence {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lima_fence_release_rcu ; 
 struct lima_fence* FUNC1 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC2(struct dma_fence *fence)
{
	struct lima_fence *f = FUNC1(fence);

	FUNC0(&f->base.rcu, lima_fence_release_rcu);
}