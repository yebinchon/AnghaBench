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
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;
struct nouveau_fence {TYPE_1__ base; int /*<<< orphan*/  head; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct nouveau_fence* FUNC2 (struct dma_fence*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dma_fence*) ; 

__attribute__((used)) static bool FUNC6(struct dma_fence *f)
{
	struct nouveau_fence *fence = FUNC2(f);

	/*
	 * caller should have a reference on the fence,
	 * else fence could get freed here
	 */
	FUNC0(FUNC3(&fence->base.refcount) <= 1);

	/*
	 * This needs uevents to work correctly, but dma_fence_add_callback relies on
	 * being able to enable signaling. It will still get signaled eventually,
	 * just not right away.
	 */
	if (FUNC5(f)) {
		FUNC4(&fence->head);

		FUNC1(&fence->base);
		return false;
	}

	return true;
}