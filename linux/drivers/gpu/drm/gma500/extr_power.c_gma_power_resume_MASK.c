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
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  power_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

int FUNC8(struct device *_dev)
{
	struct pci_dev *pdev = FUNC7(_dev);
	struct drm_device *dev = FUNC4(pdev);

	FUNC2(&power_mutex);
	FUNC1(pdev);
	FUNC0(pdev);
	FUNC6(dev);
	FUNC5(dev);
	FUNC3(&power_mutex);
	return 0;
}