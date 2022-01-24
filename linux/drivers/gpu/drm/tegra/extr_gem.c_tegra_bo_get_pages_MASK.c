#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int size; } ;
struct tegra_bo {int num_pages; TYPE_1__* pages; TYPE_5__ gem; TYPE_1__* sgt; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EFAULT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *drm, struct tegra_bo *bo)
{
	int err;

	bo->pages = FUNC3(&bo->gem);
	if (FUNC0(bo->pages))
		return FUNC1(bo->pages);

	bo->num_pages = bo->gem.size >> PAGE_SHIFT;

	bo->sgt = FUNC5(bo->pages, bo->num_pages);
	if (FUNC0(bo->sgt)) {
		err = FUNC1(bo->sgt);
		goto put_pages;
	}

	err = FUNC2(drm->dev, bo->sgt->sgl, bo->sgt->nents,
			 DMA_FROM_DEVICE);
	if (err == 0) {
		err = -EFAULT;
		goto free_sgt;
	}

	return 0;

free_sgt:
	FUNC7(bo->sgt);
	FUNC6(bo->sgt);
put_pages:
	FUNC4(&bo->gem, bo->pages, false, false);
	return err;
}