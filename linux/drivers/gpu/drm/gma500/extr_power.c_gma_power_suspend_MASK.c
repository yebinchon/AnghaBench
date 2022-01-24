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
struct drm_psb_private {scalar_t__ display_count; int /*<<< orphan*/  suspended; } ;
struct drm_device {int /*<<< orphan*/  dev; struct drm_psb_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  power_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

int FUNC8(struct device *_dev)
{
	struct pci_dev *pdev = FUNC7(_dev);
	struct drm_device *dev = FUNC5(pdev);
	struct drm_psb_private *dev_priv = dev->dev_private;

	FUNC3(&power_mutex);
	if (!dev_priv->suspended) {
		if (dev_priv->display_count) {
			FUNC4(&power_mutex);
			FUNC0(dev->dev, "GPU hardware busy, cannot suspend\n");
			return -EBUSY;
		}
		FUNC6(dev);
		FUNC1(dev);
		FUNC2(pdev);
	}
	FUNC4(&power_mutex);
	return 0;
}