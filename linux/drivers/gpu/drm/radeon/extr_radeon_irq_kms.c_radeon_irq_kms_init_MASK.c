#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int installed; int /*<<< orphan*/  lock; } ;
struct radeon_device {int msi_enabled; int /*<<< orphan*/  hotplug_work; TYPE_2__ irq; TYPE_3__* ddev; int /*<<< orphan*/  audio_work; int /*<<< orphan*/  dp_work; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; int /*<<< orphan*/  num_crtc; } ;
struct TYPE_7__ {int vblank_disable_immediate; TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r600_audio_update_hdmi ; 
 int /*<<< orphan*/  radeon_dp_work_func ; 
 int /*<<< orphan*/  radeon_hotplug_work_func ; 
 scalar_t__ FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct radeon_device *rdev)
{
	int r = 0;

	FUNC9(&rdev->irq.lock);

	/* Disable vblank irqs aggressively for power-saving */
	rdev->ddev->vblank_disable_immediate = true;

	r = FUNC5(rdev->ddev, rdev->num_crtc);
	if (r) {
		return r;
	}

	/* enable msi */
	rdev->msi_enabled = 0;

	if (FUNC8(rdev)) {
		int ret = FUNC7(rdev->pdev);
		if (!ret) {
			rdev->msi_enabled = 1;
			FUNC3(rdev->dev, "radeon: using MSI.\n");
		}
	}

	FUNC1(&rdev->hotplug_work, radeon_hotplug_work_func);
	FUNC2(&rdev->dp_work, radeon_dp_work_func);
	FUNC2(&rdev->audio_work, r600_audio_update_hdmi);

	rdev->irq.installed = true;
	r = FUNC4(rdev->ddev, rdev->ddev->pdev->irq);
	if (r) {
		rdev->irq.installed = false;
		FUNC6(&rdev->hotplug_work);
		return r;
	}

	FUNC0("radeon: irq initialized.\n");
	return 0;
}