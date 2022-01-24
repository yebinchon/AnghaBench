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
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct drm_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev, enum vga_switcheroo_state state)
{
	struct drm_device *dev = FUNC5(pdev);

	if (FUNC0(dev) && state == VGA_SWITCHEROO_OFF)
		return;

	if (state == VGA_SWITCHEROO_ON) {
		FUNC6("amdgpu: switched on\n");
		/* don't suspend or resume card normally */
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

		FUNC1(dev, true, true);

		dev->switch_power_state = DRM_SWITCH_POWER_ON;
		FUNC4(dev);
	} else {
		FUNC6("amdgpu: switched off\n");
		FUNC3(dev);
		dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
		FUNC2(dev, true, true);
		dev->switch_power_state = DRM_SWITCH_POWER_OFF;
	}
}