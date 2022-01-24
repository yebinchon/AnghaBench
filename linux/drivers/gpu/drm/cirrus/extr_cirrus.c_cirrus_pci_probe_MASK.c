#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  preferred_depth; } ;
struct drm_device {TYPE_1__ mode_config; struct pci_dev* pdev; struct cirrus_device* dev_private; } ;
struct cirrus_device {int /*<<< orphan*/ * vram; int /*<<< orphan*/ * mmio; struct drm_device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cirrus_device*) ; 
 int /*<<< orphan*/  cirrus_driver ; 
 int /*<<< orphan*/  FUNC1 (struct cirrus_device*) ; 
 int FUNC2 (struct cirrus_device*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct cirrus_device*) ; 
 struct cirrus_device* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct drm_device*) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	struct drm_device *dev;
	struct cirrus_device *cirrus;
	int ret;

	ret = FUNC6(pdev, 0, "cirrusdrmfb");
	if (ret)
		return ret;

	ret = FUNC14(pdev);
	if (ret)
		return ret;

	ret = FUNC16(pdev, DRIVER_NAME);
	if (ret)
		return ret;

	ret = -ENOMEM;
	cirrus = FUNC13(sizeof(*cirrus), GFP_KERNEL);
	if (cirrus == NULL)
		goto err_pci_release;

	dev = &cirrus->dev;
	ret = FUNC3(dev, &cirrus_driver, &pdev->dev);
	if (ret)
		goto err_free_cirrus;
	dev->dev_private = cirrus;

	ret = -ENOMEM;
	cirrus->vram = FUNC10(FUNC18(pdev, 0),
			       FUNC17(pdev, 0));
	if (cirrus->vram == NULL)
		goto err_dev_put;

	cirrus->mmio = FUNC10(FUNC18(pdev, 1),
			       FUNC17(pdev, 1));
	if (cirrus->mmio == NULL)
		goto err_unmap_vram;

	FUNC1(cirrus);

	ret = FUNC0(cirrus);
	if (ret < 0)
		goto err_cleanup;

	ret = FUNC2(cirrus);
	if (ret < 0)
		goto err_cleanup;

	FUNC9(dev);

	dev->pdev = pdev;
	FUNC19(pdev, dev);
	ret = FUNC5(dev, 0);
	if (ret)
		goto err_cleanup;

	FUNC7(dev, dev->mode_config.preferred_depth);
	return 0;

err_cleanup:
	FUNC8(dev);
	FUNC11(cirrus->mmio);
err_unmap_vram:
	FUNC11(cirrus->vram);
err_dev_put:
	FUNC4(dev);
err_free_cirrus:
	FUNC12(cirrus);
err_pci_release:
	FUNC15(pdev);
	return ret;
}