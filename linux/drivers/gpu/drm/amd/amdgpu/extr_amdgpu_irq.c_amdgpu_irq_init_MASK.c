#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int msi_enabled; int installed; int /*<<< orphan*/  ih2_work; int /*<<< orphan*/  ih1_work; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_crtc; } ;
struct amdgpu_device {TYPE_4__* ddev; int /*<<< orphan*/  hotplug_work; TYPE_3__ irq; TYPE_1__ mode_info; int /*<<< orphan*/  enable_virtual_display; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;
struct TYPE_9__ {int vblank_disable_immediate; int max_vblank_count; TYPE_2__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_hotplug_work_func ; 
 int /*<<< orphan*/  amdgpu_irq_handle_ih1 ; 
 int /*<<< orphan*/  amdgpu_irq_handle_ih2 ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct amdgpu_device *adev)
{
	int r = 0;

	FUNC9(&adev->irq.lock);

	/* Enable MSI if not disabled by module parameter */
	adev->irq.msi_enabled = false;

	if (FUNC3(adev)) {
		int ret = FUNC8(adev->pdev);
		if (!ret) {
			adev->irq.msi_enabled = true;
			FUNC4(adev->dev, "amdgpu: using MSI.\n");
		}
	}

	if (!FUNC2(adev)) {
		if (!adev->enable_virtual_display)
			/* Disable vblank IRQs aggressively for power-saving */
			/* XXX: can this be enabled for DC? */
			adev->ddev->vblank_disable_immediate = true;

		r = FUNC6(adev->ddev, adev->mode_info.num_crtc);
		if (r)
			return r;

		/* Pre-DCE11 */
		FUNC1(&adev->hotplug_work,
				amdgpu_hotplug_work_func);
	}

	FUNC1(&adev->irq.ih1_work, amdgpu_irq_handle_ih1);
	FUNC1(&adev->irq.ih2_work, amdgpu_irq_handle_ih2);

	adev->irq.installed = true;
	r = FUNC5(adev->ddev, adev->ddev->pdev->irq);
	if (r) {
		adev->irq.installed = false;
		if (!FUNC2(adev))
			FUNC7(&adev->hotplug_work);
		return r;
	}
	adev->ddev->max_vblank_count = 0x00ffffff;

	FUNC0("amdgpu: irq initialized.\n");
	return 0;
}