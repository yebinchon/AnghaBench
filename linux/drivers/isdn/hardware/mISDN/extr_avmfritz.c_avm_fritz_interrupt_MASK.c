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
struct fritzcard {int /*<<< orphan*/  lock; int /*<<< orphan*/  isac; int /*<<< orphan*/  irqcnt; int /*<<< orphan*/  name; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int AVM_STATUS0_IRQ_HDLC ; 
 int AVM_STATUS0_IRQ_ISAC ; 
 int AVM_STATUS0_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int FUNC1 (struct fritzcard*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int intno, void *dev_id)
{
	struct fritzcard *fc = dev_id;
	u8 val;
	u8 sval;

	FUNC5(&fc->lock);
	sval = FUNC2(fc->addr + 2);
	FUNC4("%s: irq stat0 %x\n", fc->name, sval);
	if ((sval & AVM_STATUS0_IRQ_MASK) == AVM_STATUS0_IRQ_MASK) {
		/* shared  IRQ from other HW */
		FUNC6(&fc->lock);
		return IRQ_NONE;
	}
	fc->irqcnt++;

	if (!(sval & AVM_STATUS0_IRQ_ISAC)) {
		val = FUNC1(fc, ISAC_ISTA);
		FUNC3(&fc->isac, val);
	}
	if (!(sval & AVM_STATUS0_IRQ_HDLC))
		FUNC0(fc);
	FUNC6(&fc->lock);
	return IRQ_HANDLED;
}