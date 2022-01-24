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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct inf_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  ipac; int /*<<< orphan*/  irqcnt; TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DIVA_IRQ_BIT ; 
 scalar_t__ DIVA_PCI_CTRL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  irqloops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int intno, void *dev_id)
{
	struct inf_hw *hw = dev_id;
	u8 val;

	FUNC2(&hw->lock);
	val = FUNC0((u32)hw->cfg.start + DIVA_PCI_CTRL);
	if (!(val & DIVA_IRQ_BIT)) { /* for us or shared ? */
		FUNC3(&hw->lock);
		return IRQ_NONE; /* shared */
	}
	hw->irqcnt++;
	FUNC1(&hw->ipac, irqloops);
	FUNC3(&hw->lock);
	return IRQ_HANDLED;
}