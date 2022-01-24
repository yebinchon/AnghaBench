#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hifn_device {TYPE_1__* pdev; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ pci_vendor; scalar_t__ pci_prod; char* card_id; } ;
struct TYPE_4__ {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  HIFN_1_DMA_CNFG ; 
 int /*<<< orphan*/  HIFN_1_UNLOCK_SECRET1 ; 
 int /*<<< orphan*/  HIFN_1_UNLOCK_SECRET2 ; 
 int HIFN_DMACNFG_DMARESET ; 
 int HIFN_DMACNFG_MODE ; 
 int HIFN_DMACNFG_MSTRESET ; 
 int HIFN_DMACNFG_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int,char) ; 
 int FUNC4 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_2__* pci2id ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct hifn_device *dev)
{
	u32 dmacfg, addr;
	char *offtbl = NULL;
	int i;

	for (i = 0; i < FUNC0(pci2id); i++) {
		if (pci2id[i].pci_vendor == dev->pdev->vendor &&
				pci2id[i].pci_prod == dev->pdev->device) {
			offtbl = pci2id[i].card_id;
			break;
		}
	}

	if (!offtbl) {
		FUNC2(&dev->pdev->dev, "Unknown card!\n");
		return -ENODEV;
	}

	dmacfg = FUNC4(dev, HIFN_1_DMA_CNFG);

	FUNC5(dev, HIFN_1_DMA_CNFG,
			HIFN_DMACNFG_UNLOCK | HIFN_DMACNFG_MSTRESET |
			HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);
	FUNC6(1);
	addr = FUNC4(dev, HIFN_1_UNLOCK_SECRET1);
	FUNC6(1);
	FUNC5(dev, HIFN_1_UNLOCK_SECRET2, 0);
	FUNC6(1);

	for (i = 0; i < 12; ++i) {
		addr = FUNC3(addr, offtbl[i] + 0x101);
		FUNC5(dev, HIFN_1_UNLOCK_SECRET2, addr);

		FUNC6(1);
	}
	FUNC5(dev, HIFN_1_DMA_CNFG, dmacfg);

	FUNC1(&dev->pdev->dev, "%s %s.\n", dev->name, FUNC7(dev->pdev));

	return 0;
}