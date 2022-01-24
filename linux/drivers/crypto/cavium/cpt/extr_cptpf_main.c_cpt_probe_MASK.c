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
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct cpt_device {int /*<<< orphan*/  reg_base; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_device*) ; 
 int FUNC2 (struct cpt_device*) ; 
 int FUNC3 (struct cpt_device*,int) ; 
 int FUNC4 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 struct cpt_device* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int num_vfs ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct cpt_device *cpt;
	int err;

	if (num_vfs > 16 || num_vfs < 4) {
		FUNC7(dev, "Invalid vf count %d, Resetting it to 4(default)\n",
			 num_vfs);
		num_vfs = 4;
	}

	cpt = FUNC8(dev, sizeof(*cpt), GFP_KERNEL);
	if (!cpt)
		return -ENOMEM;

	FUNC15(pdev, cpt);
	cpt->pdev = pdev;
	err = FUNC10(pdev);
	if (err) {
		FUNC6(dev, "Failed to enable PCI device\n");
		FUNC15(pdev, NULL);
		return err;
	}

	err = FUNC12(pdev, DRV_NAME);
	if (err) {
		FUNC6(dev, "PCI request regions failed 0x%x\n", err);
		goto cpt_err_disable_device;
	}

	err = FUNC14(pdev, FUNC0(48));
	if (err) {
		FUNC6(dev, "Unable to get usable DMA configuration\n");
		goto cpt_err_release_regions;
	}

	err = FUNC13(pdev, FUNC0(48));
	if (err) {
		FUNC6(dev, "Unable to get 48-bit DMA for consistent allocations\n");
		goto cpt_err_release_regions;
	}

	/* MAP PF's configuration registers */
	cpt->reg_base = FUNC16(pdev, 0, 0);
	if (!cpt->reg_base) {
		FUNC6(dev, "Cannot map config register space, aborting\n");
		err = -ENOMEM;
		goto cpt_err_release_regions;
	}

	/* CPT device HW initialization */
	FUNC1(cpt);

	/* Register interrupts */
	err = FUNC2(cpt);
	if (err)
		goto cpt_err_release_regions;

	err = FUNC4(cpt);
	if (err)
		goto cpt_err_unregister_interrupts;

	/* Configure SRIOV */
	err = FUNC3(cpt, num_vfs);
	if (err)
		goto cpt_err_unregister_interrupts;

	return 0;

cpt_err_unregister_interrupts:
	FUNC5(cpt);
cpt_err_release_regions:
	FUNC11(pdev);
cpt_err_disable_device:
	FUNC9(pdev);
	FUNC15(pdev, NULL);
	return err;
}