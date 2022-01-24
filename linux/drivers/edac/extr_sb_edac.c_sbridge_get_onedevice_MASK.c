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
typedef  int /*<<< orphan*/  u8 ;
struct sbridge_dev {size_t i_devs; struct pci_dev** pdev; } ;
struct pci_id_table {int n_imcs_per_sock; struct pci_id_descr* descr; } ;
struct pci_id_descr {scalar_t__ dom; int /*<<< orphan*/  dev_id; scalar_t__ optional; } ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IMC1 ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 scalar_t__ SOCK ; 
 struct sbridge_dev* FUNC0 (int,int /*<<< orphan*/ ,scalar_t__,struct pci_id_table const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sbridge_dev* FUNC2 (int,int /*<<< orphan*/ ,scalar_t__,int const,struct sbridge_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct pci_dev **prev,
				 u8 *num_mc,
				 const struct pci_id_table *table,
				 const unsigned devno,
				 const int multi_bus)
{
	struct sbridge_dev *sbridge_dev = NULL;
	const struct pci_id_descr *dev_descr = &table->descr[devno];
	struct pci_dev *pdev = NULL;
	int seg = 0;
	u8 bus = 0;
	int i = 0;

	FUNC8(KERN_DEBUG,
		"Seeking for: PCI ID %04x:%04x\n",
		PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

	pdev = FUNC7(PCI_VENDOR_ID_INTEL,
			      dev_descr->dev_id, *prev);

	if (!pdev) {
		if (*prev) {
			*prev = pdev;
			return 0;
		}

		if (dev_descr->optional)
			return 0;

		/* if the HA wasn't found */
		if (devno == 0)
			return -ENODEV;

		FUNC8(KERN_INFO,
			"Device not found: %04x:%04x\n",
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

		/* End of list, leave */
		return -ENODEV;
	}
	seg = FUNC5(pdev->bus);
	bus = pdev->bus->number;

next_imc:
	sbridge_dev = FUNC2(seg, bus, dev_descr->dom,
				      multi_bus, sbridge_dev);
	if (!sbridge_dev) {
		/* If the HA1 wasn't found, don't create EDAC second memory controller */
		if (dev_descr->dom == IMC1 && devno != 1) {
			FUNC1(0, "Skip IMC1: %04x:%04x (since HA1 was absent)\n",
				 PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
			FUNC4(pdev);
			return 0;
		}

		if (dev_descr->dom == SOCK)
			goto out_imc;

		sbridge_dev = FUNC0(seg, bus, dev_descr->dom, table);
		if (!sbridge_dev) {
			FUNC4(pdev);
			return -ENOMEM;
		}
		(*num_mc)++;
	}

	if (sbridge_dev->pdev[sbridge_dev->i_devs]) {
		FUNC8(KERN_ERR,
			"Duplicated device for %04x:%04x\n",
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
		FUNC4(pdev);
		return -ENODEV;
	}

	sbridge_dev->pdev[sbridge_dev->i_devs++] = pdev;

	/* pdev belongs to more than one IMC, do extra gets */
	if (++i > 1)
		FUNC3(pdev);

	if (dev_descr->dom == SOCK && i < table->n_imcs_per_sock)
		goto next_imc;

out_imc:
	/* Be sure that the device is enabled */
	if (FUNC9(FUNC6(pdev) < 0)) {
		FUNC8(KERN_ERR,
			"Couldn't enable %04x:%04x\n",
			PCI_VENDOR_ID_INTEL, dev_descr->dev_id);
		return -ENODEV;
	}

	FUNC1(0, "Detected %04x:%04x\n",
		 PCI_VENDOR_ID_INTEL, dev_descr->dev_id);

	/*
	 * As stated on drivers/pci/search.c, the reference count for
	 * @from is always decremented if it is not %NULL. So, as we need
	 * to get all devices up to null, we need to do a get for the device
	 */
	FUNC3(pdev);

	*prev = pdev;

	return 0;
}