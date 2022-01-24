#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {void* switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ pm_message_t ;
typedef  enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;

/* Variables and functions */
 void* DRM_SWITCH_POWER_CHANGING ; 
 void* DRM_SWITCH_POWER_OFF ; 
 void* DRM_SWITCH_POWER_ON ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PM_EVENT_SUSPEND ; 
 int VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
	struct drm_i915_private *i915 = FUNC4(pdev);
	pm_message_t pmm = { .event = PM_EVENT_SUSPEND };

	if (!i915) {
		FUNC0(&pdev->dev, "DRM not initialized, aborting switch.\n");
		return;
	}

	if (state == VGA_SWITCHEROO_ON) {
		FUNC5("switched on\n");
		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
		/* i915 resume handler doesn't set to D0 */
		FUNC3(pdev, PCI_D0);
		FUNC1(i915);
		i915->drm.switch_power_state = DRM_SWITCH_POWER_ON;
	} else {
		FUNC5("switched off\n");
		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
		FUNC2(i915, pmm);
		i915->drm.switch_power_state = DRM_SWITCH_POWER_OFF;
	}
}