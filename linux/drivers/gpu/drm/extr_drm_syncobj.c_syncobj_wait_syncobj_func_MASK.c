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
struct syncobj_wait_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  task; struct dma_fence* fence; int /*<<< orphan*/  point; } ;
struct drm_syncobj {int /*<<< orphan*/  lock; int /*<<< orphan*/  fence; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct drm_syncobj *syncobj,
				      struct syncobj_wait_entry *wait)
{
	struct dma_fence *fence;

	/* This happens inside the syncobj lock */
	fence = FUNC6(syncobj->fence,
					  FUNC5(&syncobj->lock));
	FUNC1(fence);
	if (!fence || FUNC0(&fence, wait->point)) {
		FUNC3(fence);
		return;
	} else if (!fence) {
		wait->fence = FUNC2();
	} else {
		wait->fence = fence;
	}

	FUNC7(wait->task);
	FUNC4(&wait->node);
}