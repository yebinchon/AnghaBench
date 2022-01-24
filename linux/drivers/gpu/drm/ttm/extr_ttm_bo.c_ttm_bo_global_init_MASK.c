#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_bo_global {int /*<<< orphan*/  kobj; int /*<<< orphan*/  bo_count; int /*<<< orphan*/  device_list; int /*<<< orphan*/ * swap_lru; int /*<<< orphan*/ * dummy_read_page; TYPE_1__* mem_glob; int /*<<< orphan*/  lru_lock; } ;
struct TYPE_3__ {struct ttm_bo_global* bo_glob; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int TTM_MAX_BO_PRIORITY ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct ttm_bo_global ttm_bo_glob ; 
 int /*<<< orphan*/  ttm_bo_glob_kobj_type ; 
 int ttm_bo_glob_use_count ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  ttm_global_mutex ; 
 TYPE_1__ ttm_mem_glob ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct ttm_bo_global *glob = &ttm_bo_glob;
	int ret = 0;
	unsigned i;

	FUNC5(&ttm_global_mutex);
	if (++ttm_bo_glob_use_count > 1)
		goto out;

	ret = FUNC9(&ttm_mem_glob);
	if (ret)
		goto out;

	FUNC7(&glob->lru_lock);
	glob->mem_glob = &ttm_mem_glob;
	glob->mem_glob->bo_glob = glob;
	glob->dummy_read_page = FUNC1(__GFP_ZERO | GFP_DMA32);

	if (FUNC10(glob->dummy_read_page == NULL)) {
		ret = -ENOMEM;
		goto out;
	}

	for (i = 0; i < TTM_MAX_BO_PRIORITY; ++i)
		FUNC0(&glob->swap_lru[i]);
	FUNC0(&glob->device_list);
	FUNC2(&glob->bo_count, 0);

	ret = FUNC3(
		&glob->kobj, &ttm_bo_glob_kobj_type, FUNC8(), "buffer_objects");
	if (FUNC10(ret != 0))
		FUNC4(&glob->kobj);
out:
	FUNC6(&ttm_global_mutex);
	return ret;
}