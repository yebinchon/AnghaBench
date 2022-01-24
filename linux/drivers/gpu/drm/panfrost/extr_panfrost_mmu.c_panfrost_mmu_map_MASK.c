#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct drm_gem_object {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;
struct panfrost_gem_object {int is_mapped; TYPE_1__ node; int /*<<< orphan*/  mmu; scalar_t__ noexec; TYPE_2__ base; } ;
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int IOMMU_NOEXEC ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 int FUNC0 (struct sg_table*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct sg_table*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sg_table* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct panfrost_device*,int /*<<< orphan*/ ,int,int,struct sg_table*) ; 
 struct panfrost_device* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct panfrost_gem_object *bo)
{
	struct drm_gem_object *obj = &bo->base.base;
	struct panfrost_device *pfdev = FUNC5(obj->dev);
	struct sg_table *sgt;
	int prot = IOMMU_READ | IOMMU_WRITE;

	if (FUNC2(bo->is_mapped))
		return 0;

	if (bo->noexec)
		prot |= IOMMU_NOEXEC;

	sgt = FUNC3(obj);
	if (FUNC2(FUNC0(sgt)))
		return FUNC1(sgt);

	FUNC4(pfdev, bo->mmu, bo->node.start << PAGE_SHIFT, prot, sgt);
	bo->is_mapped = true;

	return 0;
}