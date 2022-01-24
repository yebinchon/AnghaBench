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
typedef  int u8 ;
struct w6692_hw {int imask; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  irqcnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W_D_FIFO_THRESH ; 
 int W_INT_B1_EXI ; 
 int W_INT_B2_EXI ; 
 int W_INT_D_EXI ; 
 int W_INT_D_RME ; 
 int W_INT_D_RMR ; 
 int W_INT_D_XFR ; 
 int W_INT_XINT0 ; 
 int W_INT_XINT1 ; 
 int /*<<< orphan*/  W_ISTA ; 
 int /*<<< orphan*/  FUNC3 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct w6692_hw*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int intno, void *dev_id)
{
	struct w6692_hw	*card = dev_id;
	u8		ista;

	FUNC7(&card->lock);
	ista = FUNC0(card, W_ISTA);
	if ((ista | card->imask) == card->imask) {
		/* possible a shared  IRQ reqest */
		FUNC8(&card->lock);
		return IRQ_NONE;
	}
	card->irqcnt++;
	FUNC6("%s: ista %02x\n", card->name, ista);
	ista &= ~card->imask;
	if (ista & W_INT_B1_EXI)
		FUNC1(card, 0);
	if (ista & W_INT_B2_EXI)
		FUNC1(card, 1);
	if (ista & W_INT_D_RME)
		FUNC3(card);
	if (ista & W_INT_D_RMR)
		FUNC2(card, W_D_FIFO_THRESH);
	if (ista & W_INT_D_XFR)
		FUNC5(card);
	if (ista & W_INT_D_EXI)
		FUNC4(card);
	if (ista & (W_INT_XINT0 | W_INT_XINT1)) /* XINT0/1 - never */
		FUNC6("%s: W6692 spurious XINT!\n", card->name);
/* End IRQ Handler */
	FUNC8(&card->lock);
	return IRQ_HANDLED;
}