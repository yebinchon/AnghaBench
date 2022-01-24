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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct tegra_drm {scalar_t__ domain; TYPE_1__ carveout; int /*<<< orphan*/  mm; int /*<<< orphan*/  mm_lock; } ;
struct host1x_device {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct host1x_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_drm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 struct host1x_device* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct drm_device *drm)
{
	struct host1x_device *device = FUNC11(drm->dev);
	struct tegra_drm *tegra = drm->dev_private;
	int err;

	FUNC1(drm);
	FUNC10(drm);
	FUNC0(drm);
	FUNC3(drm);

	err = FUNC4(device);
	if (err < 0)
		return;

	if (tegra->domain) {
		FUNC8(&tegra->mm_lock);
		FUNC2(&tegra->mm);
		FUNC9(&tegra->carveout.domain);
		FUNC6();
		FUNC5(tegra->domain);
	}

	FUNC7(tegra);
}