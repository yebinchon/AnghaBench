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
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 struct dma_fence* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct dma_fence *f;
	int err = -EINVAL;

	f = FUNC4();
	if (!f)
		return -ENOMEM;

	FUNC2(f, -EIO);

	if (FUNC0(f)) {
		FUNC5("Fence unexpectedly has error status before signal\n");
		goto err_free;
	}

	FUNC3(f);
	if (FUNC0(f) != -EIO) {
		FUNC5("Fence not reporting error status, got %d\n",
		       FUNC0(f));
		goto err_free;
	}

	err = 0;
err_free:
	FUNC1(f);
	return err;
}