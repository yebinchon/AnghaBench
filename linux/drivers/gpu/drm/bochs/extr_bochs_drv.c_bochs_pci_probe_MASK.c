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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  bochs_driver ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct drm_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int) ; 
 int FUNC10 (struct pci_dev*) ; 
 unsigned long FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct drm_device*) ; 

__attribute__((used)) static int FUNC13(struct pci_dev *pdev,
			   const struct pci_device_id *ent)
{
	struct drm_device *dev;
	unsigned long fbsize;
	int ret;

	fbsize = FUNC11(pdev, 0);
	if (fbsize < 4 * 1024 * 1024) {
		FUNC0("less than 4 MB video memory, ignoring device\n");
		return -ENOMEM;
	}

	ret = FUNC8(pdev, 0, "bochsdrmfb");
	if (ret)
		return ret;

	dev = FUNC5(&bochs_driver, &pdev->dev);
	if (FUNC1(dev))
		return FUNC2(dev);

	ret = FUNC10(pdev);
	if (ret)
		goto err_free_dev;

	dev->pdev = pdev;
	FUNC12(pdev, dev);

	ret = FUNC3(dev);
	if (ret)
		goto err_free_dev;

	ret = FUNC7(dev, 0);
	if (ret)
		goto err_unload;

	FUNC9(dev, 32);
	return ret;

err_unload:
	FUNC4(dev);
err_free_dev:
	FUNC6(dev);
	return ret;
}