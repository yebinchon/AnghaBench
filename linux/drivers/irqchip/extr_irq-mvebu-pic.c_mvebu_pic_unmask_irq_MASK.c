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
struct mvebu_pic {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 scalar_t__ PIC_MASK ; 
 struct mvebu_pic* FUNC0 (struct irq_data*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct mvebu_pic *pic = FUNC0(d);
	u32 reg;

	reg = FUNC1(pic->base + PIC_MASK);
	reg &= ~(1 << d->hwirq);
	FUNC2(reg, pic->base + PIC_MASK);
}