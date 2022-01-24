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
typedef  unsigned int uint32_t ;
struct dma_fence {int dummy; } ;
struct default_wait_cb {int /*<<< orphan*/  base; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 long ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_fence_default_wait_cb ; 
 scalar_t__ FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dma_fence**,unsigned int,unsigned int*) ; 
 struct default_wait_cb* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct default_wait_cb*) ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

signed long
FUNC11(struct dma_fence **fences, uint32_t count,
			   bool intr, signed long timeout, uint32_t *idx)
{
	struct default_wait_cb *cb;
	signed long ret = timeout;
	unsigned i;

	if (FUNC0(!fences || !count || timeout < 0))
		return -EINVAL;

	if (timeout == 0) {
		for (i = 0; i < count; ++i)
			if (FUNC3(fences[i])) {
				if (idx)
					*idx = i;
				return 1;
			}

		return 0;
	}

	cb = FUNC6(count, sizeof(struct default_wait_cb), GFP_KERNEL);
	if (cb == NULL) {
		ret = -ENOMEM;
		goto err_free_cb;
	}

	for (i = 0; i < count; ++i) {
		struct dma_fence *fence = fences[i];

		cb[i].task = current;
		if (FUNC2(fence, &cb[i].base,
					   dma_fence_default_wait_cb)) {
			/* This fence is already signaled */
			if (idx)
				*idx = i;
			goto fence_rm_cb;
		}
	}

	while (ret > 0) {
		if (intr)
			FUNC9(TASK_INTERRUPTIBLE);
		else
			FUNC9(TASK_UNINTERRUPTIBLE);

		if (FUNC5(fences, count, idx))
			break;

		ret = FUNC8(ret);

		if (ret > 0 && intr && FUNC10(current))
			ret = -ERESTARTSYS;
	}

	FUNC1(TASK_RUNNING);

fence_rm_cb:
	while (i-- > 0)
		FUNC4(fences[i], &cb[i].base);

err_free_cb:
	FUNC7(cb);

	return ret;
}