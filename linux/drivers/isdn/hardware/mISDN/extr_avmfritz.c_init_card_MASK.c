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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int (* init ) (TYPE_1__*) ;} ;
struct fritzcard {scalar_t__ type; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  irqcnt; int /*<<< orphan*/  lock; TYPE_1__ isac; } ;

/* Variables and functions */
 scalar_t__ AVM_FRITZ_PCIV2 ; 
 int DEBUG_HW ; 
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ISACX_CMDRD ; 
 int /*<<< orphan*/  ISACX_MASK ; 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fritzcard*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  avm_fritz_interrupt ; 
 int /*<<< orphan*/  avm_fritzv2_interrupt ; 
 int /*<<< orphan*/  FUNC2 (struct fritzcard*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC3 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC5 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC10 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14(struct fritzcard *fc)
{
	int		ret, cnt = 3;
	u_long		flags;

	FUNC10(fc); /* disable IRQ */
	if (fc->type == AVM_FRITZ_PCIV2)
		ret = FUNC9(fc->irq, avm_fritzv2_interrupt,
				  IRQF_SHARED, fc->name, fc);
	else
		ret = FUNC9(fc->irq, avm_fritz_interrupt,
				  IRQF_SHARED, fc->name, fc);
	if (ret) {
		FUNC7("%s: couldn't get interrupt %d\n",
			fc->name, fc->irq);
		return ret;
	}
	while (cnt--) {
		FUNC11(&fc->lock, flags);
		ret = fc->isac.init(&fc->isac);
		if (ret) {
			FUNC12(&fc->lock, flags);
			FUNC7("%s: ISAC init failed with %d\n",
				fc->name, ret);
			break;
		}
		FUNC2(fc);
		FUNC5(fc);
		FUNC3(fc);
		/* RESET Receiver and Transmitter */
		if (fc->type == AVM_FRITZ_PCIV2) {
			FUNC1(fc, ISACX_MASK, 0);
			FUNC1(fc, ISACX_CMDRD, 0x41);
		} else {
			FUNC0(fc, ISAC_MASK, 0);
			FUNC0(fc, ISAC_CMDR, 0x41);
		}
		FUNC12(&fc->lock, flags);
		/* Timeout 10ms */
		FUNC6(10);
		if (debug & DEBUG_HW)
			FUNC8("%s: IRQ %d count %d\n", fc->name,
				  fc->irq, fc->irqcnt);
		if (!fc->irqcnt) {
			FUNC7("%s: IRQ(%d) getting no IRQs during init %d\n",
				fc->name, fc->irq, 3 - cnt);
			FUNC10(fc);
		} else
			return 0;
	}
	FUNC4(fc->irq, fc);
	return -EIO;
}