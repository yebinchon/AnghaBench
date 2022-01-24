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
struct ttm_mem_type_manager {struct amdgpu_vram_mgr* priv; int /*<<< orphan*/  bdev; } ;
struct amdgpu_vram_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_mem_info_vis_vram_total ; 
 int /*<<< orphan*/  dev_attr_mem_info_vis_vram_used ; 
 int /*<<< orphan*/  dev_attr_mem_info_vram_total ; 
 int /*<<< orphan*/  dev_attr_mem_info_vram_used ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 struct amdgpu_vram_mgr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ttm_mem_type_manager *man,
				unsigned long p_size)
{
	struct amdgpu_device *adev = FUNC1(man->bdev);
	struct amdgpu_vram_mgr *mgr;
	int ret;

	mgr = FUNC4(sizeof(*mgr), GFP_KERNEL);
	if (!mgr)
		return -ENOMEM;

	FUNC3(&mgr->mm, 0, p_size);
	FUNC5(&mgr->lock);
	man->priv = mgr;

	/* Add the two VRAM-related sysfs files */
	ret = FUNC2(adev->dev, &dev_attr_mem_info_vram_total);
	if (ret) {
		FUNC0("Failed to create device file mem_info_vram_total\n");
		return ret;
	}
	ret = FUNC2(adev->dev, &dev_attr_mem_info_vis_vram_total);
	if (ret) {
		FUNC0("Failed to create device file mem_info_vis_vram_total\n");
		return ret;
	}
	ret = FUNC2(adev->dev, &dev_attr_mem_info_vram_used);
	if (ret) {
		FUNC0("Failed to create device file mem_info_vram_used\n");
		return ret;
	}
	ret = FUNC2(adev->dev, &dev_attr_mem_info_vis_vram_used);
	if (ret) {
		FUNC0("Failed to create device file mem_info_vis_vram_used\n");
		return ret;
	}

	return 0;
}