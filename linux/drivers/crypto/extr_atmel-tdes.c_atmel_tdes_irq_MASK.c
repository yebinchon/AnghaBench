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
struct atmel_tdes_dev {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int TDES_FLAGS_BUSY ; 
 int /*<<< orphan*/  TDES_IDR ; 
 int /*<<< orphan*/  TDES_IMR ; 
 int /*<<< orphan*/  TDES_ISR ; 
 int FUNC0 (struct atmel_tdes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_tdes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct atmel_tdes_dev *tdes_dd = dev_id;
	u32 reg;

	reg = FUNC0(tdes_dd, TDES_ISR);
	if (reg & FUNC0(tdes_dd, TDES_IMR)) {
		FUNC1(tdes_dd, TDES_IDR, reg);
		if (TDES_FLAGS_BUSY & tdes_dd->flags)
			FUNC3(&tdes_dd->done_task);
		else
			FUNC2(tdes_dd->dev, "TDES interrupt when no active requests.\n");
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}