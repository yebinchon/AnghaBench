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
struct fritzcard {int ctrlreg; int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  name; int /*<<< orphan*/  isac; int /*<<< orphan*/  irqcnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AVM_STATUS0_IRQ_HDLC ; 
 int AVM_STATUS0_IRQ_ISAC ; 
 int AVM_STATUS0_IRQ_MASK ; 
 int AVM_STATUS0_IRQ_TIMER ; 
 int AVM_STATUS0_RES_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISACX_ISTA ; 
 int FUNC1 (struct fritzcard*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC9(int intno, void *dev_id)
{
	struct fritzcard *fc = dev_id;
	u8 val;
	u8 sval;

	FUNC6(&fc->lock);
	sval = FUNC2(fc->addr + 2);
	FUNC5("%s: irq stat0 %x\n", fc->name, sval);
	if (!(sval & AVM_STATUS0_IRQ_MASK)) {
		/* shared  IRQ from other HW */
		FUNC7(&fc->lock);
		return IRQ_NONE;
	}
	fc->irqcnt++;

	if (sval & AVM_STATUS0_IRQ_HDLC)
		FUNC0(fc);
	if (sval & AVM_STATUS0_IRQ_ISAC) {
		val = FUNC1(fc, ISACX_ISTA);
		FUNC3(&fc->isac, val);
	}
	if (sval & AVM_STATUS0_IRQ_TIMER) {
		FUNC5("%s: timer irq\n", fc->name);
		FUNC4(fc->ctrlreg | AVM_STATUS0_RES_TIMER, fc->addr + 2);
		FUNC8(1);
		FUNC4(fc->ctrlreg, fc->addr + 2);
	}
	FUNC7(&fc->lock);
	return IRQ_HANDLED;
}