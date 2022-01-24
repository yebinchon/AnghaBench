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
struct zip_device {size_t index; scalar_t__ reg_base; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_CFG_ZIP_PF_BAR0 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct zip_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct zip_device*) ; 
 struct zip_device* FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/ ** zip_dev ; 
 int FUNC15 (struct zip_device*) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct zip_device *zip = NULL;
	int    err;

	zip = FUNC14(pdev);
	if (!zip)
		return -ENOMEM;

	FUNC2(dev, "Found ZIP device %d %x:%x on Node %d\n", zip->index,
		 pdev->vendor, pdev->device, FUNC3(dev));

	FUNC13(pdev, zip);
	zip->pdev = pdev;

	err = FUNC7(pdev);
	if (err) {
		FUNC1(dev, "Failed to enable PCI device");
		goto err_free_device;
	}

	err = FUNC10(pdev, DRV_NAME);
	if (err) {
		FUNC1(dev, "PCI request regions failed 0x%x", err);
		goto err_disable_device;
	}

	err = FUNC12(pdev, FUNC0(48));
	if (err) {
		FUNC1(dev, "Unable to get usable DMA configuration\n");
		goto err_release_regions;
	}

	err = FUNC11(pdev, FUNC0(48));
	if (err) {
		FUNC1(dev, "Unable to get 48-bit DMA for allocations\n");
		goto err_release_regions;
	}

	/* MAP configuration registers */
	zip->reg_base = FUNC8(pdev, PCI_CFG_ZIP_PF_BAR0);
	if (!zip->reg_base) {
		FUNC1(dev, "ZIP: Cannot map BAR0 CSR memory space, aborting");
		err = -ENOMEM;
		goto err_release_regions;
	}

	/* Initialize ZIP Hardware */
	err = FUNC15(zip);
	if (err)
		goto err_release_regions;

	return 0;

err_release_regions:
	if (zip->reg_base)
		FUNC5(zip->reg_base);
	FUNC9(pdev);

err_disable_device:
	FUNC6(pdev);

err_free_device:
	FUNC13(pdev, NULL);

	/* Remove zip_dev from zip_device list, free the zip_device memory */
	zip_dev[zip->index] = NULL;
	FUNC4(dev, zip);

	return err;
}