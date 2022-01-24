#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  revision; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct TYPE_4__ {int /*<<< orphan*/  dropped; int /*<<< orphan*/  completed; int /*<<< orphan*/  posted; } ;
struct TYPE_3__ {int /*<<< orphan*/  revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; } ;
struct nitrox_device {scalar_t__ node; int /*<<< orphan*/  state; TYPE_2__ stats; int /*<<< orphan*/  qlen; int /*<<< orphan*/  nr_queues; int /*<<< orphan*/  bar_addr; int /*<<< orphan*/  timeout; TYPE_1__ hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_PF_QUEUES ; 
 scalar_t__ NUMA_NO_NODE ; 
 int /*<<< orphan*/  __NDEV_NOT_READY ; 
 int /*<<< orphan*/  __NDEV_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nitrox_device*) ; 
 struct nitrox_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nitrox_device*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct nitrox_device*) ; 
 int FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  nitrox_driver_name ; 
 int FUNC18 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct nitrox_device*) ; 
 int FUNC20 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,struct nitrox_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*) ; 
 int /*<<< orphan*/  qlen ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC32(struct pci_dev *pdev,
			const struct pci_device_id *id)
{
	struct nitrox_device *ndev;
	int err;

	FUNC5(&pdev->dev, "%s driver version %s\n",
		      nitrox_driver_name, DRIVER_VERSION);

	err = FUNC24(pdev);
	if (err)
		return err;

	/* do FLR */
	err = FUNC17(pdev);
	if (err) {
		FUNC4(&pdev->dev, "FLR failed\n");
		FUNC23(pdev);
		return err;
	}

	if (!FUNC7(&pdev->dev, FUNC0(64))) {
		FUNC3(&pdev->dev, "DMA to 64-BIT address\n");
	} else {
		err = FUNC7(&pdev->dev, FUNC0(32));
		if (err) {
			FUNC4(&pdev->dev, "DMA configuration failed\n");
			FUNC23(pdev);
			return err;
		}
	}

	err = FUNC26(pdev, nitrox_driver_name);
	if (err) {
		FUNC23(pdev);
		return err;
	}
	FUNC30(pdev);

	ndev = FUNC10(sizeof(*ndev), GFP_KERNEL);
	if (!ndev) {
		err = -ENOMEM;
		goto ndev_fail;
	}

	FUNC29(pdev, ndev);
	ndev->pdev = pdev;

	/* add to device list */
	FUNC13(ndev);

	ndev->hw.vendor_id = pdev->vendor;
	ndev->hw.device_id = pdev->device;
	ndev->hw.revision_id = pdev->revision;
	/* command timeout in jiffies */
	ndev->timeout = FUNC12(CMD_TIMEOUT);
	ndev->node = FUNC6(&pdev->dev);
	if (ndev->node == NUMA_NO_NODE)
		ndev->node = 0;

	ndev->bar_addr = FUNC8(FUNC28(pdev, 0),
				 FUNC27(pdev, 0));
	if (!ndev->bar_addr) {
		err = -EIO;
		goto ioremap_err;
	}
	/* allocate command queus based on cpus, max queues are 64 */
	ndev->nr_queues = FUNC11(u32, MAX_PF_QUEUES, FUNC22());
	ndev->qlen = qlen;

	err = FUNC20(ndev);
	if (err)
		goto ioremap_err;

	err = FUNC18(ndev);
	if (err)
		goto pf_hw_fail;

	FUNC16(ndev);

	/* clear the statistics */
	FUNC1(&ndev->stats.posted, 0);
	FUNC1(&ndev->stats.completed, 0);
	FUNC1(&ndev->stats.dropped, 0);

	FUNC2(&ndev->state, __NDEV_READY);
	/* barrier to sync with other cpus */
	FUNC31();

	err = FUNC14();
	if (err)
		goto crypto_fail;

	return 0;

crypto_fail:
	FUNC15(ndev);
	FUNC2(&ndev->state, __NDEV_NOT_READY);
	/* barrier to sync with other cpus */
	FUNC31();
pf_hw_fail:
	FUNC19(ndev);
ioremap_err:
	FUNC21(ndev);
	FUNC9(ndev);
	FUNC29(pdev, NULL);
ndev_fail:
	FUNC25(pdev);
	FUNC23(pdev);
	return err;
}