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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct drm_device {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 struct drm_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hibmc_driver ; 
 int FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct drm_device*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev,
			   const struct pci_device_id *ent)
{
	struct drm_device *dev;
	int ret;

	dev = FUNC3(&hibmc_driver, &pdev->dev);
	if (FUNC1(dev)) {
		FUNC0("failed to allocate drm_device\n");
		return FUNC2(dev);
	}

	dev->pdev = pdev;
	FUNC10(pdev, dev);

	ret = FUNC9(pdev);
	if (ret) {
		FUNC0("failed to enable pci device: %d\n", ret);
		goto err_free;
	}

	ret = FUNC6(dev);
	if (ret) {
		FUNC0("failed to load hibmc: %d\n", ret);
		goto err_disable;
	}

	ret = FUNC5(dev, 0);
	if (ret) {
		FUNC0("failed to register drv for userspace access: %d\n",
			  ret);
		goto err_unload;
	}
	return 0;

err_unload:
	FUNC7(dev);
err_disable:
	FUNC8(pdev);
err_free:
	FUNC4(dev);

	return ret;
}