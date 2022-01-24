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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct exiu_irq_data {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIMASK ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 struct exiu_irq_data* FUNC2 (struct irq_data*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct exiu_irq_data *data = FUNC2(d);
	u32 val;

	val = FUNC3(data->base + EIMASK) | FUNC0(d->hwirq);
	FUNC4(val, data->base + EIMASK);
	FUNC1(d);
}