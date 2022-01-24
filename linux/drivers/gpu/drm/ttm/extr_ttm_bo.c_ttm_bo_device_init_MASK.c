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
struct ttm_bo_global {int /*<<< orphan*/  device_list; } ;
struct ttm_bo_driver {int dummy; } ;
struct ttm_bo_device {int need_dma32; int /*<<< orphan*/  device_list; struct ttm_bo_global* glob; struct address_space* dev_mapping; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  wq; int /*<<< orphan*/  vma_manager; int /*<<< orphan*/  man; struct ttm_bo_driver* driver; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_SIZE ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_bo_delayed_workqueue ; 
 struct ttm_bo_global ttm_bo_glob ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct ttm_bo_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttm_global_mutex ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct ttm_bo_device *bdev,
		       struct ttm_bo_driver *driver,
		       struct address_space *mapping,
		       bool need_dma32)
{
	struct ttm_bo_global *glob = &ttm_bo_glob;
	int ret;

	ret = FUNC7();
	if (ret)
		return ret;

	bdev->driver = driver;

	FUNC4(bdev->man, 0, sizeof(bdev->man));

	/*
	 * Initialize the system memory buffer type.
	 * Other types need to be driver / IOCTL initialized.
	 */
	ret = FUNC9(bdev, TTM_PL_SYSTEM, 0);
	if (FUNC10(ret != 0))
		goto out_no_sys;

	FUNC2(&bdev->vma_manager,
				    DRM_FILE_PAGE_OFFSET_START,
				    DRM_FILE_PAGE_OFFSET_SIZE);
	FUNC0(&bdev->wq, ttm_bo_delayed_workqueue);
	FUNC1(&bdev->ddestroy);
	bdev->dev_mapping = mapping;
	bdev->glob = glob;
	bdev->need_dma32 = need_dma32;
	FUNC5(&ttm_global_mutex);
	FUNC3(&bdev->device_list, &glob->device_list);
	FUNC6(&ttm_global_mutex);

	return 0;
out_no_sys:
	FUNC8();
	return ret;
}