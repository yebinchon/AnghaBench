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
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  IRQ_ENABLE_BANK ; 
 int /*<<< orphan*/  pdc_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d, bool on)
{
	int pin_out = d->hwirq;
	u32 index, mask;
	u32 enable;

	index = pin_out / 32;
	mask = pin_out % 32;

	FUNC4(&pdc_lock);
	enable = FUNC2(IRQ_ENABLE_BANK, index);
	enable = on ? FUNC1(enable, mask) : FUNC0(enable, mask);
	FUNC3(IRQ_ENABLE_BANK, index, enable);
	FUNC5(&pdc_lock);
}