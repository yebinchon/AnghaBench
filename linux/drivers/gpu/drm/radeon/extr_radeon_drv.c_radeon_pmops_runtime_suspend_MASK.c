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
struct drm_device {int /*<<< orphan*/  switch_power_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_SWITCH_POWER_CHANGING ; 
 int /*<<< orphan*/  DRM_SWITCH_POWER_DYNAMIC_OFF ; 
 int EBUSY ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct drm_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*,int,int,int) ; 
 struct pci_dev* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct pci_dev *pdev = FUNC11(dev);
	struct drm_device *drm_dev = FUNC2(pdev);
	int ret;

	if (!FUNC9(drm_dev)) {
		FUNC6(dev);
		return -EBUSY;
	}

	drm_dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
	FUNC0(drm_dev);

	ret = FUNC10(drm_dev, false, false, false);
	FUNC4(pdev);
	FUNC1(pdev);
	FUNC3(pdev);
	if (FUNC8())
		FUNC5(pdev, PCI_D3cold);
	else if (!FUNC7())
		FUNC5(pdev, PCI_D3hot);
	drm_dev->switch_power_state = DRM_SWITCH_POWER_DYNAMIC_OFF;

	return 0;
}