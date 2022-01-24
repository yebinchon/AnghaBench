#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  domain; } ;
struct TYPE_5__ {int ngpio; TYPE_3__ irq; } ;
struct thunderx_gpio {TYPE_2__ chip; TYPE_1__* msix_entries; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thunderx_gpio* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	int i;
	struct thunderx_gpio *txgpio = FUNC2(pdev);

	for (i = 0; i < txgpio->chip.ngpio; i++)
		FUNC0(txgpio->chip.irq.domain,
				   txgpio->msix_entries[i].vector);

	FUNC1(txgpio->chip.irq.domain);

	FUNC3(pdev, NULL);
}