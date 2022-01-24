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
struct usnic_ib_vf {struct usnic_ib_dev* vnic; int /*<<< orphan*/  link; int /*<<< orphan*/  lock; struct usnic_ib_dev* pf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct usnic_ib_dev {TYPE_1__ ib_dev; int /*<<< orphan*/  usdev_lock; int /*<<< orphan*/ * vf_res_cnt; int /*<<< orphan*/  vf_dev_list; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef  enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct usnic_ib_dev*) ; 
 int FUNC1 (struct usnic_ib_dev*) ; 
 int USNIC_VNIC_RES_TYPE_EOL ; 
 int USNIC_VNIC_RES_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usnic_ib_vf*) ; 
 struct usnic_ib_vf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct usnic_ib_vf*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int) ; 
 struct usnic_ib_dev* FUNC18 (struct usnic_ib_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct usnic_ib_vf*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usnic_ib_dev* FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct usnic_ib_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct usnic_ib_dev*,int) ; 

__attribute__((used)) static int FUNC24(struct pci_dev *pdev,
				const struct pci_device_id *id)
{
	int err;
	struct usnic_ib_dev *pf;
	struct usnic_ib_vf *vf;
	enum usnic_vnic_res_type res_type;

	vf = FUNC4(sizeof(*vf), GFP_KERNEL);
	if (!vf)
		return -ENOMEM;

	err = FUNC10(pdev);
	if (err) {
		FUNC17("Failed to enable %s with err %d\n",
				FUNC11(pdev), err);
		goto out_clean_vf;
	}

	err = FUNC13(pdev, DRV_NAME);
	if (err) {
		FUNC17("Failed to request region for %s with err %d\n",
				FUNC11(pdev), err);
		goto out_disable_device;
	}

	FUNC15(pdev);
	FUNC14(pdev, vf);

	vf->vnic = FUNC21(pdev);
	if (FUNC0(vf->vnic)) {
		err = vf->vnic ? FUNC1(vf->vnic) : -ENOMEM;
		FUNC17("Failed to alloc vnic for %s with err %d\n",
				FUNC11(pdev), err);
		goto out_release_regions;
	}

	pf = FUNC18(vf->vnic);
	if (FUNC0(pf)) {
		FUNC17("Failed to discover pf of vnic %s with err%ld\n",
				FUNC11(pdev), FUNC1(pf));
		err = pf ? FUNC1(pf) : -EFAULT;
		goto out_clean_vnic;
	}

	vf->pf = pf;
	FUNC16(&vf->lock);
	FUNC6(&pf->usdev_lock);
	FUNC5(&vf->link, &pf->vf_dev_list);
	/*
	 * Save max settings (will be same for each VF, easier to re-write than
	 * to say "if (!set) { set_values(); set=1; }
	 */
	for (res_type = USNIC_VNIC_RES_TYPE_EOL+1;
			res_type < USNIC_VNIC_RES_TYPE_MAX;
			res_type++) {
		pf->vf_res_cnt[res_type] = FUNC23(vf->vnic,
								res_type);
	}

	FUNC7(&pf->usdev_lock);

	FUNC20("Registering usnic VF %s into PF %s\n", FUNC11(pdev),
		   FUNC2(&pf->ib_dev.dev));
	FUNC19(vf);
	return 0;

out_clean_vnic:
	FUNC22(vf->vnic);
out_release_regions:
	FUNC14(pdev, NULL);
	FUNC8(pdev);
	FUNC12(pdev);
out_disable_device:
	FUNC9(pdev);
out_clean_vf:
	FUNC3(vf);
	return err;
}