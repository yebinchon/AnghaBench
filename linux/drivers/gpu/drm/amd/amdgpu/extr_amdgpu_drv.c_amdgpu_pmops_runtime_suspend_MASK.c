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
 int FUNC1 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct drm_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct pci_dev* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct pci_dev *pdev = FUNC11(dev);
	struct drm_device *drm_dev = FUNC6(pdev);
	int ret;

	if (!FUNC0(drm_dev)) {
		FUNC10(dev);
		return -EBUSY;
	}

	drm_dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;
	FUNC4(drm_dev);

	ret = FUNC1(drm_dev, false, false);
	FUNC8(pdev);
	FUNC5(pdev);
	FUNC7(pdev);
	if (FUNC3())
		FUNC9(pdev, PCI_D3cold);
	else if (!FUNC2())
		FUNC9(pdev, PCI_D3hot);
	drm_dev->switch_power_state = DRM_SWITCH_POWER_DYNAMIC_OFF;

	return 0;
}