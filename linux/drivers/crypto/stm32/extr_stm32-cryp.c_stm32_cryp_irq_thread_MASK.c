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
struct stm32_cryp {int irq_status; int /*<<< orphan*/  gcm_ctr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_CR ; 
 int /*<<< orphan*/  CRYP_IMSCR ; 
 int CR_PH_HEADER ; 
 int CR_PH_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MISR_IN ; 
 int MISR_OUT ; 
 scalar_t__ FUNC0 (struct stm32_cryp*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_cryp*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC4 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_cryp*) ; 
 int FUNC7 (struct stm32_cryp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *arg)
{
	struct stm32_cryp *cryp = arg;
	u32 ph;

	if (cryp->irq_status & MISR_OUT)
		/* Output FIFO IRQ: read data */
		if (FUNC9(FUNC3(cryp))) {
			/* All bytes processed, finish */
			FUNC8(cryp, CRYP_IMSCR, 0);
			FUNC2(cryp, 0);
			return IRQ_HANDLED;
		}

	if (cryp->irq_status & MISR_IN) {
		if (FUNC1(cryp)) {
			ph = FUNC7(cryp, CRYP_CR) & CR_PH_MASK;
			if (FUNC9(ph == CR_PH_HEADER))
				/* Write Header */
				FUNC6(cryp);
			else
				/* Input FIFO IRQ: write data */
				FUNC5(cryp);
			cryp->gcm_ctr++;
		} else if (FUNC0(cryp)) {
			ph = FUNC7(cryp, CRYP_CR) & CR_PH_MASK;
			if (FUNC9(ph == CR_PH_HEADER))
				/* Write Header */
				FUNC4(cryp);
			else
				/* Input FIFO IRQ: write data */
				FUNC5(cryp);
		} else {
			/* Input FIFO IRQ: write data */
			FUNC5(cryp);
		}
	}

	return IRQ_HANDLED;
}