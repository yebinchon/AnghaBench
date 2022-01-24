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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct hlwd_gpio {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HW_GPIOB_INTFLAG ; 
 struct hlwd_gpio* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct hlwd_gpio *hlwd =
		FUNC1(FUNC3(data));

	FUNC2(FUNC0(data->hwirq), hlwd->regs + HW_GPIOB_INTFLAG);
}