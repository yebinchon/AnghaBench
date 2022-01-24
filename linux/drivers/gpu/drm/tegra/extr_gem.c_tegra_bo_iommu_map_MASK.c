#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tegra_drm {int /*<<< orphan*/  mm_lock; TYPE_3__* drm; int /*<<< orphan*/  domain; int /*<<< orphan*/  mm; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct tegra_bo {TYPE_4__* mm; int /*<<< orphan*/  size; TYPE_2__* sgt; int /*<<< orphan*/  paddr; TYPE_1__ gem; } ;
struct TYPE_11__ {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tegra_drm *tegra, struct tegra_bo *bo)
{
	int prot = IOMMU_READ | IOMMU_WRITE;
	int err;

	if (bo->mm)
		return -EBUSY;

	bo->mm = FUNC5(sizeof(*bo->mm), GFP_KERNEL);
	if (!bo->mm)
		return -ENOMEM;

	FUNC6(&tegra->mm_lock);

	err = FUNC1(&tegra->mm,
					 bo->mm, bo->gem.size, PAGE_SIZE, 0, 0);
	if (err < 0) {
		FUNC0(tegra->drm->dev, "out of I/O virtual memory: %d\n",
			err);
		goto unlock;
	}

	bo->paddr = bo->mm->start;

	bo->size = FUNC3(tegra->domain, bo->paddr, bo->sgt->sgl,
				bo->sgt->nents, prot);
	if (!bo->size) {
		FUNC0(tegra->drm->dev, "failed to map buffer\n");
		err = -ENOMEM;
		goto remove;
	}

	FUNC7(&tegra->mm_lock);

	return 0;

remove:
	FUNC2(bo->mm);
unlock:
	FUNC7(&tegra->mm_lock);
	FUNC4(bo->mm);
	return err;
}