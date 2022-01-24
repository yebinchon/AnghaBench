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
struct usnic_vnic {int /*<<< orphan*/  res_lock; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct usnic_vnic* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct usnic_vnic*) ; 
 struct usnic_vnic* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC8 (struct pci_dev*,struct usnic_vnic*) ; 
 int /*<<< orphan*/  FUNC9 (struct usnic_vnic*) ; 

struct usnic_vnic *FUNC10(struct pci_dev *pdev)
{
	struct usnic_vnic *vnic;
	int err = 0;

	if (!FUNC3(pdev)) {
		FUNC7("PCI dev %s is disabled\n", FUNC4(pdev));
		return FUNC0(-EINVAL);
	}

	vnic = FUNC2(sizeof(*vnic), GFP_KERNEL);
	if (!vnic)
		return FUNC0(-ENOMEM);

	FUNC5(&vnic->res_lock);

	err = FUNC8(pdev, vnic);
	if (err) {
		FUNC7("Failed to discover %s resources with err %d\n",
				FUNC4(pdev), err);
		goto out_free_vnic;
	}

	FUNC6("Allocated vnic for %s\n", FUNC9(vnic));

	return vnic;

out_free_vnic:
	FUNC1(vnic);

	return FUNC0(err);
}