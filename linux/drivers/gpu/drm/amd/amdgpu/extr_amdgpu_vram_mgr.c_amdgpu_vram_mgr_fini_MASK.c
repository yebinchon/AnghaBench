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
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_mem_info_vis_vram_total ; 
 int /*<<< orphan*/  dev_attr_mem_info_vis_vram_used ; 
 int /*<<< orphan*/  dev_attr_mem_info_vram_total ; 
 int /*<<< orphan*/  dev_attr_mem_info_vram_used ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_vram_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ttm_mem_type_manager *man)
{
	struct amdgpu_device *adev = FUNC0(man->bdev);
	struct amdgpu_vram_mgr *mgr = man->priv;

	FUNC4(&mgr->lock);
	FUNC2(&mgr->mm);
	FUNC5(&mgr->lock);
	FUNC3(mgr);
	man->priv = NULL;
	FUNC1(adev->dev, &dev_attr_mem_info_vram_total);
	FUNC1(adev->dev, &dev_attr_mem_info_vis_vram_total);
	FUNC1(adev->dev, &dev_attr_mem_info_vram_used);
	FUNC1(adev->dev, &dev_attr_mem_info_vis_vram_used);
	return 0;
}