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
 int /*<<< orphan*/  DRM_SWITCH_POWER_DYNAMIC_OFF ; 
 int EBUSY ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int FUNC0 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct drm_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct pci_dev* FUNC9 (struct device*) ; 

__attribute__((used)) static int
FUNC10(struct device *dev)
{
	struct pci_dev *pdev = FUNC9(dev);
	struct drm_device *drm_dev = FUNC4(pdev);
	int ret;

	if (!FUNC1()) {
		FUNC8(dev);
		return -EBUSY;
	}

	FUNC2();
	ret = FUNC0(drm_dev, true);
	FUNC6(pdev);
	FUNC3(pdev);
	FUNC5(pdev);
	FUNC7(pdev, PCI_D3cold);
	drm_dev->switch_power_state = DRM_SWITCH_POWER_DYNAMIC_OFF;
	return ret;
}