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
struct lima_submit {TYPE_1__* task; int /*<<< orphan*/ * in_sync; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  deps; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct dma_fence*) ; 
 int FUNC3 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 

__attribute__((used)) static int FUNC4(struct drm_file *file, struct lima_submit *submit)
{
	int i, err;

	for (i = 0; i < FUNC0(submit->in_sync); i++) {
		struct dma_fence *fence = NULL;

		if (!submit->in_sync[i])
			continue;

		err = FUNC3(file, submit->in_sync[i],
					     0, 0, &fence);
		if (err)
			return err;

		err = FUNC2(&submit->task->deps, fence);
		if (err) {
			FUNC1(fence);
			return err;
		}
	}

	return 0;
}