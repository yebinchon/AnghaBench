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
struct syncobj_wait_entry {struct dma_fence* fence; int /*<<< orphan*/  node; int /*<<< orphan*/  point; } ;
struct drm_syncobj {int /*<<< orphan*/  lock; int /*<<< orphan*/  cb_list; int /*<<< orphan*/  fence; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence**,int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct drm_syncobj *syncobj,
				       struct syncobj_wait_entry *wait)
{
	struct dma_fence *fence;

	if (wait->fence)
		return;

	FUNC6(&syncobj->lock);
	/* We've already tried once to get a fence and failed.  Now that we
	 * have the lock, try one more time just to be sure we don't add a
	 * callback when a fence has already been set.
	 */
	fence = FUNC1(FUNC5(syncobj->fence, 1));
	if (!fence || FUNC0(&fence, wait->point)) {
		FUNC3(fence);
		FUNC4(&wait->node, &syncobj->cb_list);
	} else if (!fence) {
		wait->fence = FUNC2();
	} else {
		wait->fence = fence;
	}
	FUNC7(&syncobj->lock);
}