#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct irq_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ irq_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* irq_ic_data ; 
 unsigned int FUNC1 (struct irq_data*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *irqd)
{
	unsigned int irq = FUNC1(irqd);
	unsigned int irq_off = irq % 32;
	int reg = irq / 32;
	u32 val;

	val = FUNC2(irq_ic_data->irq_base +
			FUNC0(irq_ic_data, reg));
	FUNC3(val & ~(1 << irq_off),
	       irq_ic_data->irq_base + FUNC0(irq_ic_data, reg));
}