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
struct tegra_kbc {int keypress_caused_wake; int /*<<< orphan*/  lock; scalar_t__ cp_dly_jiffies; int /*<<< orphan*/  timer; scalar_t__ mmio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ KBC_INT_0 ; 
 int KBC_INT_FIFO_CNT_INT_STATUS ; 
 int KBC_INT_KEYPRESS_INT_STATUS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_kbc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *args)
{
	struct tegra_kbc *kbc = args;
	unsigned long flags;
	u32 val;

	FUNC2(&kbc->lock, flags);

	/*
	 * Quickly bail out & reenable interrupts if the fifo threshold
	 * count interrupt wasn't the interrupt source
	 */
	val = FUNC1(kbc->mmio + KBC_INT_0);
	FUNC5(val, kbc->mmio + KBC_INT_0);

	if (val & KBC_INT_FIFO_CNT_INT_STATUS) {
		/*
		 * Until all keys are released, defer further processing to
		 * the polling loop in tegra_kbc_keypress_timer.
		 */
		FUNC4(kbc, false);
		FUNC0(&kbc->timer, jiffies + kbc->cp_dly_jiffies);
	} else if (val & KBC_INT_KEYPRESS_INT_STATUS) {
		/* We can be here only through system resume path */
		kbc->keypress_caused_wake = true;
	}

	FUNC3(&kbc->lock, flags);

	return IRQ_HANDLED;
}