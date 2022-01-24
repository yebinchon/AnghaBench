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
struct crystalcove_gpio {int update; int /*<<< orphan*/  buslock; } ;

/* Variables and functions */
 int UPDATE_IRQ_MASK ; 
 int UPDATE_IRQ_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct crystalcove_gpio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct crystalcove_gpio*,int) ; 
 struct crystalcove_gpio* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct crystalcove_gpio *cg =
		FUNC2(FUNC3(data));
	int gpio = data->hwirq;

	if (cg->update & UPDATE_IRQ_TYPE)
		FUNC0(cg, gpio);
	if (cg->update & UPDATE_IRQ_MASK)
		FUNC1(cg, gpio);
	cg->update = 0;

	FUNC4(&cg->buslock);
}