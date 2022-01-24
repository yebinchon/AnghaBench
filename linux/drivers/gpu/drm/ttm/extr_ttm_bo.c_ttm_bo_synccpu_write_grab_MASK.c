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
struct ttm_buffer_object {int /*<<< orphan*/  cpu_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ttm_buffer_object*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ttm_buffer_object *bo, bool no_wait)
{
	int ret = 0;

	/*
	 * Using ttm_bo_reserve makes sure the lru lists are updated.
	 */

	ret = FUNC2(bo, true, no_wait, NULL);
	if (FUNC5(ret != 0))
		return ret;
	ret = FUNC4(bo, true, no_wait);
	if (FUNC1(ret == 0))
		FUNC0(&bo->cpu_writers);
	FUNC3(bo);
	return ret;
}