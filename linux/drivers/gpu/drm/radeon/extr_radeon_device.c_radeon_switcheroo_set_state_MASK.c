#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct drm_device {void* switch_power_state; } ;
typedef  enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;

/* Variables and functions */
 void* DRM_SWITCH_POWER_CHANGING ; 
 void* DRM_SWITCH_POWER_OFF ; 
 void* DRM_SWITCH_POWER_ON ; 
 int VGA_SWITCHEROO_OFF ; 
 int VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,int,int) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
	struct drm_device *dev = FUNC2(pdev);

	if (FUNC4(dev) && state == VGA_SWITCHEROO_OFF)
		return;

	if (state == VGA_SWITCHEROO_ON) {
		FUNC3("radeon: switched on\n");
		/* don't suspend or resume card normally */
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

		FUNC5(dev, true, true);

		dev->switch_power_state = DRM_SWITCH_POWER_ON;
		FUNC1(dev);
	} else {
		FUNC3("radeon: switched off\n");
		FUNC0(dev);
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
		FUNC6(dev, true, true, false);
		dev->switch_power_state = DRM_SWITCH_POWER_OFF;
	}
}