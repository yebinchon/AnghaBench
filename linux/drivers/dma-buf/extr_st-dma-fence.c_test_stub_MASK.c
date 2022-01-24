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
 int FUNC0 (struct dma_fence**) ; 
 int EINVAL ; 
 struct dma_fence* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct dma_fence *f[64];
	int err = -EINVAL;
	int i;

	for (i = 0; i < FUNC0(f); i++) {
		f[i] = FUNC1();
		if (!FUNC2(f[i])) {
			FUNC4("Obtained unsignaled stub fence!\n");
			goto err;
		}
	}

	err = 0;
err:
	while (i--)
		FUNC3(f[i]);
	return err;
}