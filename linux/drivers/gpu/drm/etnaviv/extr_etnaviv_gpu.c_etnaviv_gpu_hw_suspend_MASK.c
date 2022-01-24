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
struct etnaviv_gpu {int exec_state; int /*<<< orphan*/ * mmu_context; int /*<<< orphan*/  lock; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gpu*) ; 
 int FUNC1 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_gpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct etnaviv_gpu *gpu)
{
	if (gpu->initialized && gpu->mmu_context) {
		/* Replace the last WAIT with END */
		FUNC4(&gpu->lock);
		FUNC0(gpu);
		FUNC5(&gpu->lock);

		/*
		 * We know that only the FE is busy here, this should
		 * happen quickly (as the WAIT is only 200 cycles).  If
		 * we fail, just warn and continue.
		 */
		FUNC2(gpu, 100);

		FUNC3(gpu->mmu_context);
		gpu->mmu_context = NULL;
	}

	gpu->exec_state = -1;

	return FUNC1(gpu);
}