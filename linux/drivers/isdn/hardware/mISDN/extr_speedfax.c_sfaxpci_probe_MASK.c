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
struct sfax_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  cfg; struct pci_dev* pdev; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sfax_hw*) ; 
 struct sfax_hw* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sfax_hw*) ; 

__attribute__((used)) static int
FUNC9(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = -ENOMEM;
	struct sfax_hw *card = FUNC1(sizeof(struct sfax_hw), GFP_KERNEL);

	if (!card) {
		FUNC6("No memory for Speedfax+ PCI\n");
		return err;
	}
	card->pdev = pdev;
	err = FUNC2(pdev);
	if (err) {
		FUNC0(card);
		return err;
	}

	FUNC7("mISDN: Speedfax found adapter %s at %s\n",
		  (char *)ent->driver_data, FUNC3(pdev));

	card->cfg = FUNC4(pdev, 0);
	card->irq = pdev->irq;
	FUNC5(pdev, card);
	err = FUNC8(card);
	if (err)
		FUNC5(pdev, NULL);
	return err;
}