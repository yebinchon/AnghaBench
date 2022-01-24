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
typedef  int u32 ;
struct edma_cc {int id; int /*<<< orphan*/ * slave_chans; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SH_ICR ; 
 int /*<<< orphan*/  SH_IER ; 
 int /*<<< orphan*/  SH_IEVAL ; 
 int /*<<< orphan*/  SH_IPR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct edma_cc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct edma_cc *ecc = data;
	int ctlr;
	u32 sh_ier;
	u32 sh_ipr;
	u32 bank;

	ctlr = ecc->id;
	if (ctlr < 0)
		return IRQ_NONE;

	FUNC2(ecc->dev, "dma_irq_handler\n");

	sh_ipr = FUNC4(ecc, SH_IPR, 0);
	if (!sh_ipr) {
		sh_ipr = FUNC4(ecc, SH_IPR, 1);
		if (!sh_ipr)
			return IRQ_NONE;
		sh_ier = FUNC4(ecc, SH_IER, 1);
		bank = 1;
	} else {
		sh_ier = FUNC4(ecc, SH_IER, 0);
		bank = 0;
	}

	do {
		u32 slot;
		u32 channel;

		slot = FUNC1(sh_ipr);
		sh_ipr &= ~(FUNC0(slot));

		if (sh_ier & FUNC0(slot)) {
			channel = (bank << 5) | slot;
			/* Clear the corresponding IPR bits */
			FUNC6(ecc, SH_ICR, bank, FUNC0(slot));
			FUNC3(&ecc->slave_chans[channel]);
		}
	} while (sh_ipr);

	FUNC5(ecc, SH_IEVAL, 1);
	return IRQ_HANDLED;
}