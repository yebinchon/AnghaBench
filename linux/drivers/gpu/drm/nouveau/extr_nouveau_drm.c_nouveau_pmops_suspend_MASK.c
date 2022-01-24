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
struct drm_device {scalar_t__ switch_power_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_DYNAMIC_OFF ; 
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int
FUNC7(struct device *dev)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct drm_device *drm_dev = FUNC2(pdev);
	int ret;

	if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF ||
	    drm_dev->switch_power_state == DRM_SWITCH_POWER_DYNAMIC_OFF)
		return 0;

	ret = FUNC0(drm_dev, false);
	if (ret)
		return ret;

	FUNC3(pdev);
	FUNC1(pdev);
	FUNC4(pdev, PCI_D3hot);
	FUNC6(200);
	return 0;
}