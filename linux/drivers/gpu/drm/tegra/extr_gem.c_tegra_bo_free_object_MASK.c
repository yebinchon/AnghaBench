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
struct tegra_drm {scalar_t__ domain; } ;
struct tegra_bo {int /*<<< orphan*/  sgt; } ;
struct drm_gem_object {TYPE_1__* dev; scalar_t__ import_attach; } ;
struct TYPE_2__ {struct tegra_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_drm*,struct tegra_bo*) ; 
 struct tegra_bo* FUNC6 (struct drm_gem_object*) ; 

void FUNC7(struct drm_gem_object *gem)
{
	struct tegra_drm *tegra = gem->dev->dev_private;
	struct tegra_bo *bo = FUNC6(gem);

	if (tegra->domain)
		FUNC5(tegra, bo);

	if (gem->import_attach) {
		FUNC0(gem->import_attach, bo->sgt,
					 DMA_TO_DEVICE);
		FUNC2(gem, NULL);
	} else {
		FUNC4(gem->dev, bo);
	}

	FUNC1(gem);
	FUNC3(bo);
}