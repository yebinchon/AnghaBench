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
struct ttm_mem_zone {scalar_t__ max_mem; int /*<<< orphan*/  name; } ;
struct ttm_mem_global {int num_zones; TYPE_1__* zone_kernel; struct ttm_mem_zone** zones; scalar_t__ lower_mem_limit; int /*<<< orphan*/  kobj; int /*<<< orphan*/  work; int /*<<< orphan*/  swap_queue; int /*<<< orphan*/  lock; } ;
struct sysinfo {int dummy; } ;
struct TYPE_2__ {int max_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_mem_global*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  ttm_mem_glob_kobj_type ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_mem_global*) ; 
 int FUNC10 (struct ttm_mem_global*,struct sysinfo*) ; 
 int FUNC11 (struct ttm_mem_global*,struct sysinfo*) ; 
 int FUNC12 (struct ttm_mem_global*,struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct ttm_mem_global*,int) ; 
 int /*<<< orphan*/  ttm_shrink_work ; 
 scalar_t__ FUNC14 (int) ; 

int FUNC15(struct ttm_mem_global *glob)
{
	struct sysinfo si;
	int ret;
	int i;
	struct ttm_mem_zone *zone;

	FUNC6(&glob->lock);
	glob->swap_queue = FUNC1("ttm_swap");
	FUNC0(&glob->work, ttm_shrink_work);
	ret = FUNC2(
		&glob->kobj, &ttm_mem_glob_kobj_type, FUNC8(), "memory_accounting");
	if (FUNC14(ret != 0)) {
		FUNC3(&glob->kobj);
		return ret;
	}

	FUNC5(&si);

	/* set it as 0 by default to keep original behavior of OOM */
	glob->lower_mem_limit = 0;

	ret = FUNC12(glob, &si);
	if (FUNC14(ret != 0))
		goto out_no_zone;
#ifdef CONFIG_HIGHMEM
	ret = ttm_mem_init_highmem_zone(glob, &si);
	if (unlikely(ret != 0))
		goto out_no_zone;
#else
	ret = FUNC10(glob, &si);
	if (FUNC14(ret != 0))
		goto out_no_zone;
#endif
	for (i = 0; i < glob->num_zones; ++i) {
		zone = glob->zones[i];
		FUNC4("Zone %7s: Available graphics memory: %llu KiB\n",
			zone->name, (unsigned long long)zone->max_mem >> 10);
	}
	FUNC13(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
	FUNC7(glob, glob->zone_kernel->max_mem/(2*PAGE_SIZE));
	return 0;
out_no_zone:
	FUNC9(glob);
	return ret;
}