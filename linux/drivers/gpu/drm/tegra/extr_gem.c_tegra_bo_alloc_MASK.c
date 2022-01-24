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
struct TYPE_2__ {size_t size; } ;
struct tegra_bo {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  paddr; TYPE_1__ gem; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tegra_drm* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct tegra_bo*) ; 
 int FUNC3 (struct drm_device*,struct tegra_bo*) ; 
 int FUNC4 (struct tegra_drm*,struct tegra_bo*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *drm, struct tegra_bo *bo)
{
	struct tegra_drm *tegra = drm->dev_private;
	int err;

	if (tegra->domain) {
		err = FUNC3(drm, bo);
		if (err < 0)
			return err;

		err = FUNC4(tegra, bo);
		if (err < 0) {
			FUNC2(drm, bo);
			return err;
		}
	} else {
		size_t size = bo->gem.size;

		bo->vaddr = FUNC1(drm->dev, size, &bo->paddr,
					 GFP_KERNEL | __GFP_NOWARN);
		if (!bo->vaddr) {
			FUNC0(drm->dev,
				"failed to allocate buffer of size %zu\n",
				size);
			return -ENOMEM;
		}
	}

	return 0;
}