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
 int /*<<< orphan*/  DRM_SWITCH_POWER_ON ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int FUNC1 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct pci_dev*) ; 
 struct drm_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct pci_dev *pdev = FUNC10(dev);
	struct drm_device *drm_dev = FUNC6(pdev);
	int ret;

	if (!FUNC0(drm_dev))
		return -EINVAL;

	drm_dev->switch_power_state = DRM_SWITCH_POWER_CHANGING;

	if (FUNC3() ||
	    !FUNC2())
		FUNC9(pdev, PCI_D0);
	FUNC7(pdev);
	ret = FUNC5(pdev);
	if (ret)
		return ret;
	FUNC8(pdev);

	ret = FUNC1(drm_dev, false, false);
	FUNC4(drm_dev);
	drm_dev->switch_power_state = DRM_SWITCH_POWER_ON;
	return 0;
}