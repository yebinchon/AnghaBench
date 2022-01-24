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
struct irq_data {int hwirq; } ;
struct combiner_reg {int /*<<< orphan*/  enabled; } ;
struct combiner {struct combiner_reg* regs; } ;

/* Variables and functions */
 int REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct combiner* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct combiner *combiner = FUNC1(data);
	struct combiner_reg *reg = combiner->regs + data->hwirq / REG_SIZE;

	FUNC0(data->hwirq % REG_SIZE, &reg->enabled);
}