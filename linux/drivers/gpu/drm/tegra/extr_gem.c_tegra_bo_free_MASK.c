#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct tegra_bo {int /*<<< orphan*/  paddr; scalar_t__ vaddr; TYPE_3__ gem; TYPE_1__* sgt; scalar_t__ pages; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *drm, struct tegra_bo *bo)
{
	if (bo->pages) {
		FUNC1(drm->dev, bo->sgt->sgl, bo->sgt->nents,
			     DMA_FROM_DEVICE);
		FUNC2(&bo->gem, bo->pages, true, true);
		FUNC4(bo->sgt);
		FUNC3(bo->sgt);
	} else if (bo->vaddr) {
		FUNC0(drm->dev, bo->gem.size, bo->vaddr, bo->paddr);
	}
}