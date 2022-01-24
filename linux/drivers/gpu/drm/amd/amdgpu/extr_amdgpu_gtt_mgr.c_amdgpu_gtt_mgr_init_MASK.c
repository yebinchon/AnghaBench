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
typedef  int uint64_t ;
struct ttm_mem_type_manager {struct amdgpu_gtt_mgr* priv; int /*<<< orphan*/  bdev; } ;
struct amdgpu_gtt_mgr {int /*<<< orphan*/  available; int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct TYPE_2__ {int gart_size; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_1__ gmc; } ;

/* Variables and functions */
 int AMDGPU_GTT_MAX_TRANSFER_SIZE ; 
 int AMDGPU_GTT_NUM_TRANSFER_WINDOWS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  dev_attr_mem_info_gtt_total ; 
 int /*<<< orphan*/  dev_attr_mem_info_gtt_used ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 struct amdgpu_gtt_mgr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ttm_mem_type_manager *man,
			       unsigned long p_size)
{
	struct amdgpu_device *adev = FUNC1(man->bdev);
	struct amdgpu_gtt_mgr *mgr;
	uint64_t start, size;
	int ret;

	mgr = FUNC5(sizeof(*mgr), GFP_KERNEL);
	if (!mgr)
		return -ENOMEM;

	start = AMDGPU_GTT_MAX_TRANSFER_SIZE * AMDGPU_GTT_NUM_TRANSFER_WINDOWS;
	size = (adev->gmc.gart_size >> PAGE_SHIFT) - start;
	FUNC4(&mgr->mm, start, size);
	FUNC6(&mgr->lock);
	FUNC2(&mgr->available, p_size);
	man->priv = mgr;

	ret = FUNC3(adev->dev, &dev_attr_mem_info_gtt_total);
	if (ret) {
		FUNC0("Failed to create device file mem_info_gtt_total\n");
		return ret;
	}
	ret = FUNC3(adev->dev, &dev_attr_mem_info_gtt_used);
	if (ret) {
		FUNC0("Failed to create device file mem_info_gtt_used\n");
		return ret;
	}

	return 0;
}