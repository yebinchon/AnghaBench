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
struct ttm_mem_type_manager {int /*<<< orphan*/  io_reserve_mutex; int /*<<< orphan*/  io_reserve_fastpath; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ttm_mem_type_manager *man, bool interruptible)
{
	if (FUNC0(man->io_reserve_fastpath))
		return 0;

	if (interruptible)
		return FUNC2(&man->io_reserve_mutex);

	FUNC1(&man->io_reserve_mutex);
	return 0;
}