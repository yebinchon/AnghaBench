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
struct ttm_mem_zone {int /*<<< orphan*/  kobj; } ;
struct ttm_mem_global {unsigned int num_zones; int /*<<< orphan*/  kobj; struct ttm_mem_zone** zones; int /*<<< orphan*/ * swap_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_mem_global*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct ttm_mem_global *glob)
{
	struct ttm_mem_zone *zone;
	unsigned int i;

	/* let the page allocator first stop the shrink work. */
	FUNC6();
	FUNC5();

	FUNC1(glob->swap_queue);
	FUNC0(glob->swap_queue);
	glob->swap_queue = NULL;
	for (i = 0; i < glob->num_zones; ++i) {
		zone = glob->zones[i];
		FUNC2(&zone->kobj);
		FUNC3(&zone->kobj);
	}
	FUNC2(&glob->kobj);
	FUNC3(&glob->kobj);
	FUNC4(glob, 0, sizeof(*glob));
}