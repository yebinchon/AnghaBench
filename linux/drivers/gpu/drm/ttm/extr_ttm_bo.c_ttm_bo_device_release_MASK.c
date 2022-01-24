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
struct ttm_mem_type_manager {int has_type; int use_type; int /*<<< orphan*/ * lru; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_device {int /*<<< orphan*/  vma_manager; struct ttm_mem_type_manager* man; int /*<<< orphan*/  wq; int /*<<< orphan*/  device_list; struct ttm_bo_global* glob; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int TTM_MAX_BO_PRIORITY ; 
 unsigned int TTM_NUM_MEM_TYPES ; 
 unsigned int TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ttm_bo_device*,unsigned int) ; 
 scalar_t__ FUNC11 (struct ttm_bo_device*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  ttm_global_mutex ; 

int FUNC13(struct ttm_bo_device *bdev)
{
	int ret = 0;
	unsigned i = TTM_NUM_MEM_TYPES;
	struct ttm_mem_type_manager *man;
	struct ttm_bo_global *glob = bdev->glob;

	while (i--) {
		man = &bdev->man[i];
		if (man->has_type) {
			man->use_type = false;
			if ((i != TTM_PL_SYSTEM) && FUNC10(bdev, i)) {
				ret = -EBUSY;
				FUNC7("DRM memory manager type %d is not clean\n",
				       i);
			}
			man->has_type = false;
		}
	}

	FUNC4(&ttm_global_mutex);
	FUNC2(&bdev->device_list);
	FUNC5(&ttm_global_mutex);

	FUNC0(&bdev->wq);

	if (FUNC11(bdev, true))
		FUNC6("Delayed destroy list was clean\n");

	FUNC8(&glob->lru_lock);
	for (i = 0; i < TTM_MAX_BO_PRIORITY; ++i)
		if (FUNC3(&bdev->man[0].lru[0]))
			FUNC6("Swap list %d was clean\n", i);
	FUNC9(&glob->lru_lock);

	FUNC1(&bdev->vma_manager);

	if (!ret)
		FUNC12();

	return ret;
}