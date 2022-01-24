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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  db_bar; } ;
struct efa_dev {struct pci_dev* pdev; int /*<<< orphan*/  db_bar_len; int /*<<< orphan*/  db_bar_addr; TYPE_1__ dev_attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int EFA_BASE_BAR_MASK ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct efa_dev *dev)
{
	u8 db_bar_idx = dev->dev_attr.db_bar;
	struct pci_dev *pdev = dev->pdev;
	int bars;
	int err;

	if (!(FUNC0(db_bar_idx) & EFA_BASE_BAR_MASK)) {
		bars = FUNC5(pdev, IORESOURCE_MEM) & FUNC0(db_bar_idx);

		err = FUNC2(pdev, bars, DRV_MODULE_NAME);
		if (err) {
			FUNC1(&dev->pdev->dev,
				"pci_request_selected_regions for bar %d failed %d\n",
				db_bar_idx, err);
			return err;
		}
	}

	dev->db_bar_addr = FUNC4(dev->pdev, db_bar_idx);
	dev->db_bar_len = FUNC3(dev->pdev, db_bar_idx);

	return 0;
}