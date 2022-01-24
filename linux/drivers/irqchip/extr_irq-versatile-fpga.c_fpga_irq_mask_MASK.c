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
struct fpga_irq_data {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ IRQ_ENABLE_CLEAR ; 
 struct fpga_irq_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	struct fpga_irq_data *f = FUNC0(d);
	u32 mask = 1 << d->hwirq;

	FUNC1(mask, f->base + IRQ_ENABLE_CLEAR);
}