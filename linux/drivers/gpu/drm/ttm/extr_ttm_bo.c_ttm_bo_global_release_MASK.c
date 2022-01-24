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
struct ttm_bo_global {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_bo_global*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ttm_bo_global ttm_bo_glob ; 
 scalar_t__ ttm_bo_glob_use_count ; 
 int /*<<< orphan*/  ttm_global_mutex ; 
 int /*<<< orphan*/  ttm_mem_glob ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct ttm_bo_global *glob = &ttm_bo_glob;

	FUNC3(&ttm_global_mutex);
	if (--ttm_bo_glob_use_count > 0)
		goto out;

	FUNC0(&glob->kobj);
	FUNC1(&glob->kobj);
	FUNC5(&ttm_mem_glob);
	FUNC2(glob, 0, sizeof(*glob));
out:
	FUNC4(&ttm_global_mutex);
}