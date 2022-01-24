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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct inf_hw {struct inf_hw** sc; TYPE_1__* ci; struct pci_dev* pdev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  full; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INF_SCT_1 ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inf_hw*) ; 
 struct inf_hw* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inf_hw*) ; 
 int FUNC10 (struct inf_hw*) ; 

__attribute__((used)) static int
FUNC11(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = -ENOMEM;
	struct inf_hw *card;

	card = FUNC2(sizeof(struct inf_hw), GFP_KERNEL);
	if (!card) {
		FUNC7("No memory for Infineon ISDN card\n");
		return err;
	}
	card->pdev = pdev;
	err = FUNC4(pdev);
	if (err) {
		FUNC1(card);
		return err;
	}
	card->ci = FUNC0(ent->driver_data);
	if (!card->ci) {
		FUNC7("mISDN: do not have information about adapter at %s\n",
			FUNC5(pdev));
		FUNC1(card);
		FUNC3(pdev);
		return -EINVAL;
	} else
		FUNC8("mISDN: found adapter %s at %s\n",
			  card->ci->full, FUNC5(pdev));

	card->irq = pdev->irq;
	FUNC6(pdev, card);
	err = FUNC10(card);
	if (err) {
		FUNC3(pdev);
		FUNC1(card);
		FUNC6(pdev, NULL);
	} else if (ent->driver_data == INF_SCT_1) {
		int i;
		struct inf_hw *sc;

		for (i = 1; i < 4; i++) {
			sc = FUNC2(sizeof(struct inf_hw), GFP_KERNEL);
			if (!sc) {
				FUNC9(card);
				FUNC3(pdev);
				return -ENOMEM;
			}
			sc->irq = card->irq;
			sc->pdev = card->pdev;
			sc->ci = card->ci + i;
			err = FUNC10(sc);
			if (err) {
				FUNC3(pdev);
				FUNC1(sc);
				FUNC9(card);
				break;
			} else
				card->sc[i - 1] = sc;
		}
	}
	return err;
}