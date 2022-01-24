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
typedef  int /*<<< orphan*/  u32 ;
struct irqsteer_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg_num; scalar_t__ regs; } ;
struct irq_data {int hwirq; struct irqsteer_data* chip_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct irqsteer_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct irqsteer_data *data = d->chip_data;
	int idx = FUNC2(data, d->hwirq);
	unsigned long flags;
	u32 val;

	FUNC3(&data->lock, flags);
	val = FUNC5(data->regs + FUNC1(idx, data->reg_num));
	val |= FUNC0(d->hwirq % 32);
	FUNC6(val, data->regs + FUNC1(idx, data->reg_num));
	FUNC4(&data->lock, flags);
}