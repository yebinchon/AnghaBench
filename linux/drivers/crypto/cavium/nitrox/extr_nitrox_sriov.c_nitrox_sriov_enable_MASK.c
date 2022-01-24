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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int num_vfs; int /*<<< orphan*/  max_vf_queues; } ;
struct nitrox_device {int /*<<< orphan*/  mode; TYPE_1__ iov; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  __NDEV_MODE_PF ; 
 int /*<<< orphan*/  __NDEV_SRIOV_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct nitrox_device*) ; 
 int FUNC7 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int) ; 
 struct nitrox_device* FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev, int num_vfs)
{
	struct nitrox_device *ndev = FUNC12(pdev);
	int err;

	if (!FUNC9(num_vfs)) {
		FUNC3(FUNC0(ndev), "Invalid num_vfs %d\n", num_vfs);
		return -EINVAL;
	}

	if (FUNC13(pdev) == num_vfs)
		return num_vfs;

	err = FUNC11(pdev, num_vfs);
	if (err) {
		FUNC3(FUNC0(ndev), "failed to enable PCI sriov %d\n", err);
		return err;
	}
	FUNC4(FUNC0(ndev), "Enabled VF(s) %d\n", num_vfs);

	ndev->mode = FUNC8(num_vfs);
	ndev->iov.num_vfs = num_vfs;
	ndev->iov.max_vf_queues = FUNC15(ndev->mode);
	/* set bit in flags */
	FUNC14(__NDEV_SRIOV_BIT, &ndev->flags);

	/* cleanup PF resources */
	FUNC5(ndev);

	/* PF SR-IOV mode initialization */
	err = FUNC7(ndev);
	if (err)
		goto iov_fail;

	FUNC2(ndev, ndev->mode);
	return num_vfs;

iov_fail:
	FUNC10(pdev);
	/* clear bit in flags */
	FUNC1(__NDEV_SRIOV_BIT, &ndev->flags);
	ndev->iov.num_vfs = 0;
	ndev->mode = __NDEV_MODE_PF;
	/* reset back to working mode in PF */
	FUNC6(ndev);
	return err;
}