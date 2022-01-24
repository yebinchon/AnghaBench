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
struct sync_timeline {int /*<<< orphan*/  pt_tree; } ;
struct sync_pt {int /*<<< orphan*/  node; int /*<<< orphan*/  link; } ;
struct dma_fence {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 struct sync_timeline* FUNC1 (struct dma_fence*) ; 
 struct sync_pt* FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct sync_timeline*) ; 

__attribute__((used)) static void FUNC9(struct dma_fence *fence)
{
	struct sync_pt *pt = FUNC2(fence);
	struct sync_timeline *parent = FUNC1(fence);
	unsigned long flags;

	FUNC6(fence->lock, flags);
	if (!FUNC4(&pt->link)) {
		FUNC3(&pt->link);
		FUNC5(&pt->node, &parent->pt_tree);
	}
	FUNC7(fence->lock, flags);

	FUNC8(parent);
	FUNC0(fence);
}