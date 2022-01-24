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
struct imx_keypad {int /*<<< orphan*/  check_matrix_timer; scalar_t__ stable_count; scalar_t__ enabled; scalar_t__ mmio_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned short KBD_STAT_KDIE ; 
 unsigned short KBD_STAT_KPKD ; 
 unsigned short KBD_STAT_KPKR ; 
 unsigned short KBD_STAT_KRIE ; 
 scalar_t__ KPSR ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned short FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct imx_keypad *keypad = dev_id;
	unsigned short reg_val;

	reg_val = FUNC2(keypad->mmio_base + KPSR);

	/* Disable both interrupt types */
	reg_val &= ~(KBD_STAT_KRIE | KBD_STAT_KDIE);
	/* Clear interrupts status bits */
	reg_val |= KBD_STAT_KPKR | KBD_STAT_KPKD;
	FUNC3(reg_val, keypad->mmio_base + KPSR);

	if (keypad->enabled) {
		/* The matrix is supposed to be changed */
		keypad->stable_count = 0;

		/* Schedule the scanning procedure near in the future */
		FUNC0(&keypad->check_matrix_timer,
			  jiffies + FUNC1(2));
	}

	return IRQ_HANDLED;
}