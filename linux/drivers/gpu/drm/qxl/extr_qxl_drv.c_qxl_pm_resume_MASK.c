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
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PCI_D0 ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 struct drm_device* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*,int) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct drm_device *drm_dev = FUNC1(pdev);

	FUNC3(pdev, PCI_D0);
	FUNC2(pdev);
	if (FUNC0(pdev)) {
		return -EIO;
	}

	return FUNC4(drm_dev, false);
}