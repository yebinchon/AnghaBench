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
struct device {int dummy; } ;
struct cc_drvdata {int irq; int comp_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXIM_MON_ERR ; 
 int CC_AXI_ERR_IRQ_MASK ; 
 int CC_GPR0_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_ICR ; 
 int /*<<< orphan*/  HOST_IMR ; 
 int /*<<< orphan*/  HOST_IRR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC1 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_drvdata*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 struct device* FUNC7 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct cc_drvdata*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct cc_drvdata *drvdata = (struct cc_drvdata *)dev_id;
	struct device *dev = FUNC7(drvdata);
	u32 irr;
	u32 imr;

	/* STAT_OP_TYPE_GENERIC STAT_PHASE_0: Interrupt */
	/* if driver suspended return, probebly shared interrupt */
	if (FUNC3(dev))
		return IRQ_NONE;

	/* read the interrupt status */
	irr = FUNC1(drvdata, FUNC0(HOST_IRR));
	FUNC5(dev, "Got IRR=0x%08X\n", irr);

	if (irr == 0) /* Probably shared interrupt line */
		return IRQ_NONE;

	imr = FUNC1(drvdata, FUNC0(HOST_IMR));

	/* clear interrupt - must be before processing events */
	FUNC2(drvdata, FUNC0(HOST_ICR), irr);

	drvdata->irq = irr;
	/* Completion interrupt - most probable */
	if (irr & drvdata->comp_mask) {
		/* Mask all completion interrupts - will be unmasked in
		 * deferred service handler
		 */
		FUNC2(drvdata, FUNC0(HOST_IMR), imr | drvdata->comp_mask);
		irr &= ~drvdata->comp_mask;
		FUNC4(drvdata);
	}
#ifdef CONFIG_CRYPTO_FIPS
	/* TEE FIPS interrupt */
	if (irr & CC_GPR0_IRQ_MASK) {
		/* Mask interrupt - will be unmasked in Deferred service
		 * handler
		 */
		cc_iowrite(drvdata, CC_REG(HOST_IMR), imr | CC_GPR0_IRQ_MASK);
		irr &= ~CC_GPR0_IRQ_MASK;
		fips_handler(drvdata);
	}
#endif
	/* AXI error interrupt */
	if (irr & CC_AXI_ERR_IRQ_MASK) {
		u32 axi_err;

		/* Read the AXI error ID */
		axi_err = FUNC1(drvdata, FUNC0(AXIM_MON_ERR));
		FUNC5(dev, "AXI completion error: axim_mon_err=0x%08X\n",
			axi_err);

		irr &= ~CC_AXI_ERR_IRQ_MASK;
	}

	if (irr) {
		FUNC6(dev, "IRR includes unknown cause bits (0x%08X)\n",
				    irr);
		/* Just warning */
	}

	return IRQ_HANDLED;
}