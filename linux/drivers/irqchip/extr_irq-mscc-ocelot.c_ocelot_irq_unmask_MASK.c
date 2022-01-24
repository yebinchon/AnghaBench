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
typedef  unsigned int u32 ;
struct irq_data {unsigned int mask; } ;
struct irq_chip_type {unsigned int* mask_cache; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICPU_CFG_INTR_INTR_ENA_SET ; 
 int /*<<< orphan*/  ICPU_CFG_INTR_INTR_STICKY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct irq_chip_type* FUNC1 (struct irq_data*) ; 
 struct irq_chip_generic* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*) ; 
 unsigned int FUNC5 (struct irq_chip_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_chip_generic*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct irq_chip_generic *gc = FUNC2(data);
	struct irq_chip_type *ct = FUNC1(data);
	unsigned int mask = data->mask;
	u32 val;

	FUNC3(gc);
	val = FUNC5(gc, FUNC0(0)) |
	      FUNC5(gc, FUNC0(1));
	if (!(val & mask))
		FUNC6(gc, mask, ICPU_CFG_INTR_INTR_STICKY);

	*ct->mask_cache &= ~mask;
	FUNC6(gc, mask, ICPU_CFG_INTR_INTR_ENA_SET);
	FUNC4(gc);
}