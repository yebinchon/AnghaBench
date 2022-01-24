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
struct TYPE_2__ {scalar_t__ max_vf_queues; scalar_t__ num_vfs; } ;
struct nitrox_device {int /*<<< orphan*/  mode; TYPE_1__ iov; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int EPERM ; 
 int /*<<< orphan*/  __NDEV_MODE_PF ; 
 int /*<<< orphan*/  __NDEV_SRIOV_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct nitrox_device* FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev)
{
	struct nitrox_device *ndev = FUNC7(pdev);

	if (!FUNC9(__NDEV_SRIOV_BIT, &ndev->flags))
		return 0;

	if (FUNC8(pdev)) {
		FUNC3(FUNC0(ndev), "VFs are attached to VM. Can't disable SR-IOV\n");
		return -EPERM;
	}
	FUNC6(pdev);
	/* clear bit in flags */
	FUNC1(__NDEV_SRIOV_BIT, &ndev->flags);

	ndev->iov.num_vfs = 0;
	ndev->iov.max_vf_queues = 0;
	ndev->mode = __NDEV_MODE_PF;

	/* cleanup PF SR-IOV resources */
	FUNC5(ndev);

	FUNC2(ndev, ndev->mode);

	return FUNC4(ndev);
}