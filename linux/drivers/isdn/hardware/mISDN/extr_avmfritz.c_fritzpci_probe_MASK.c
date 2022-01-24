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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  irq; } ;
struct fritzcard {int /*<<< orphan*/  irq; int /*<<< orphan*/  addr; struct pci_dev* pdev; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVM_FRITZ_PCI ; 
 int /*<<< orphan*/  AVM_FRITZ_PCIV2 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCI_DEVICE_ID_AVM_A1_V2 ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*) ; 
 struct fritzcard* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fritzcard*) ; 

__attribute__((used)) static int
FUNC9(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = -ENOMEM;
	struct fritzcard *card;

	card = FUNC1(sizeof(struct fritzcard), GFP_KERNEL);
	if (!card) {
		FUNC6("No kmem for fritzcard\n");
		return err;
	}
	if (pdev->device == PCI_DEVICE_ID_AVM_A1_V2)
		card->type = AVM_FRITZ_PCIV2;
	else
		card->type = AVM_FRITZ_PCI;
	card->pdev = pdev;
	err = FUNC2(pdev);
	if (err) {
		FUNC0(card);
		return err;
	}

	FUNC7("mISDN: found adapter %s at %s\n",
		  (char *) ent->driver_data, FUNC3(pdev));

	card->addr = FUNC4(pdev, 1);
	card->irq = pdev->irq;
	FUNC5(pdev, card);
	err = FUNC8(card);
	if (err)
		FUNC5(pdev, NULL);
	return err;
}