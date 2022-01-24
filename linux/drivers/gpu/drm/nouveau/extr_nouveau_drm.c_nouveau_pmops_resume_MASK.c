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
struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ switch_power_state; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hpd_work; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_DYNAMIC_OFF ; 
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int FUNC0 (struct drm_device*,int) ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct pci_dev*) ; 
 struct drm_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC8 (struct device*) ; 

int
FUNC9(struct device *dev)
{
	struct pci_dev *pdev = FUNC8(dev);
	struct drm_device *drm_dev = FUNC3(pdev);
	int ret;

	if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF ||
	    drm_dev->switch_power_state == DRM_SWITCH_POWER_DYNAMIC_OFF)
		return 0;

	FUNC6(pdev, PCI_D0);
	FUNC4(pdev);
	ret = FUNC2(pdev);
	if (ret)
		return ret;
	FUNC5(pdev);

	ret = FUNC0(drm_dev, false);

	/* Monitors may have been connected / disconnected during suspend */
	FUNC7(&FUNC1(drm_dev)->hpd_work);

	return ret;
}