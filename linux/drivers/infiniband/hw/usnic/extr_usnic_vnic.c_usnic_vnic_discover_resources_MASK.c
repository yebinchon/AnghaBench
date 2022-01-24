#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usnic_vnic {TYPE_1__* bar; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * chunks; } ;
struct pci_dev {int dummy; } ;
typedef  enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_3__ {int /*<<< orphan*/  vaddr; int /*<<< orphan*/  bus_addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int IORESOURCE_MEM ; 
 int USNIC_VNIC_RES_TYPE_EOL ; 
 int USNIC_VNIC_RES_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (struct usnic_vnic*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct pci_dev*,struct pci_dev*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev,
						struct usnic_vnic *vnic)
{
	enum usnic_vnic_res_type res_type;
	int i;
	int err = 0;

	for (i = 0; i < FUNC0(vnic->bar); i++) {
		if (!(FUNC4(pdev, i) & IORESOURCE_MEM))
			continue;
		vnic->bar[i].len = FUNC5(pdev, i);
		vnic->bar[i].vaddr = FUNC2(pdev, i, vnic->bar[i].len);
		if (!vnic->bar[i].vaddr) {
			FUNC7("Cannot memory-map BAR %d, aborting\n",
					i);
			err = -ENODEV;
			goto out_clean_bar;
		}
		vnic->bar[i].bus_addr = FUNC6(pdev, i);
	}

	vnic->vdev = FUNC10(NULL, pdev, pdev, vnic->bar,
			FUNC0(vnic->bar));
	if (!vnic->vdev) {
		FUNC7("Failed to register device %s\n",
				FUNC3(pdev));
		err = -EINVAL;
		goto out_clean_bar;
	}

	for (res_type = USNIC_VNIC_RES_TYPE_EOL + 1;
			res_type < USNIC_VNIC_RES_TYPE_MAX; res_type++) {
		err = FUNC8(vnic, res_type,
						&vnic->chunks[res_type]);
		if (err)
			goto out_clean_chunks;
	}

	return 0;

out_clean_chunks:
	for (res_type--; res_type > USNIC_VNIC_RES_TYPE_EOL; res_type--)
		FUNC9(&vnic->chunks[res_type]);
	FUNC11(vnic->vdev);
out_clean_bar:
	for (i = 0; i < FUNC0(vnic->bar); i++) {
		if (!(FUNC4(pdev, i) & IORESOURCE_MEM))
			continue;
		if (!vnic->bar[i].vaddr)
			break;

		FUNC1(vnic->bar[i].vaddr);
	}

	return err;
}