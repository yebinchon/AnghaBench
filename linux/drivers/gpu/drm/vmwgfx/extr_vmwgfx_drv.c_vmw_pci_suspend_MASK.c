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
struct vmw_private {scalar_t__ refuse_hibernation; } ;
struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct drm_device* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, pm_message_t state)
{
	struct drm_device *dev = FUNC1(pdev);
	struct vmw_private *dev_priv = FUNC4(dev);

	if (dev_priv->refuse_hibernation)
		return -EBUSY;

	FUNC2(pdev);
	FUNC0(pdev);
	FUNC3(pdev, PCI_D3hot);
	return 0;
}