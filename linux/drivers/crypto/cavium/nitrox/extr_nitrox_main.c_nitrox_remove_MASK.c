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
struct TYPE_2__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;
struct nitrox_device {int /*<<< orphan*/  bar_addr; int /*<<< orphan*/  state; TYPE_1__ hw; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int /*<<< orphan*/  __NDEV_NOT_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct nitrox_device* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static void FUNC18(struct pci_dev *pdev)
{
	struct nitrox_device *ndev = FUNC12(pdev);

	if (!ndev)
		return;

	if (!FUNC15(&ndev->refcnt)) {
		FUNC2(FUNC0(ndev), "Device refcnt not zero (%d)\n",
			FUNC16(&ndev->refcnt));
		return;
	}

	FUNC3(FUNC0(ndev), "Removing Device %x:%x\n",
		 ndev->hw.vendor_id, ndev->hw.device_id);

	FUNC1(&ndev->state, __NDEV_NOT_READY);
	/* barrier to sync with other cpus */
	FUNC17();

	FUNC9(ndev);

#ifdef CONFIG_PCI_IOV
	/* disable SR-IOV */
	nitrox_sriov_configure(pdev, 0);
#endif
	FUNC6();
	FUNC7(ndev);
	FUNC8(ndev);

	FUNC4(ndev->bar_addr);
	FUNC5(ndev);

	FUNC14(pdev, NULL);
	FUNC13(pdev);
	FUNC11(pdev);
}