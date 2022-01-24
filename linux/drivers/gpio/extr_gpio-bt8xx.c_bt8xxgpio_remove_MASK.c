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
struct pci_dev {int dummy; } ;
struct bt8xxgpio {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 int /*<<< orphan*/  BT848_INT_MASK ; 
 int /*<<< orphan*/  BT848_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct bt8xxgpio* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct bt8xxgpio *bg = FUNC3(pdev);

	FUNC1(&bg->gpio);

	FUNC0(0, BT848_INT_MASK);
	FUNC0(~0x0, BT848_INT_STAT);
	FUNC0(0x0, BT848_GPIO_OUT_EN);

	FUNC2(pdev);
}