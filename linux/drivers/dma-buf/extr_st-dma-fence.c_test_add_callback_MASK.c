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
struct simple_cb {int /*<<< orphan*/  seen; int /*<<< orphan*/  cb; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 struct dma_fence* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  simple_callback ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct simple_cb cb = {};
	struct dma_fence *f;
	int err = -EINVAL;

	f = FUNC3();
	if (!f)
		return -ENOMEM;

	if (FUNC0(f, &cb.cb, simple_callback)) {
		FUNC4("Failed to add callback, fence already signaled!\n");
		goto err_free;
	}

	FUNC2(f);
	if (!cb.seen) {
		FUNC4("Callback failed!\n");
		goto err_free;
	}

	err = 0;
err_free:
	FUNC1(f);
	return err;
}