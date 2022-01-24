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
 int ENOMEM ; 
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*,int,int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct dma_fence *f;
	int err = -EINVAL;

	f = FUNC3();
	if (!f)
		return -ENOMEM;

	if (FUNC2(f, false, 0) != -ETIME) {
		FUNC4("Wait reported complete before being signaled\n");
		goto err_free;
	}

	FUNC1(f);

	if (FUNC2(f, false, 0) != 0) {
		FUNC4("Wait reported incomplete after being signaled\n");
		goto err_free;
	}

	err = 0;
err_free:
	FUNC1(f);
	FUNC0(f);
	return err;
}