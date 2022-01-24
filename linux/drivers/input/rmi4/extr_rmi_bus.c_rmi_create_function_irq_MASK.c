#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rmi_function_handler {int /*<<< orphan*/  attention; } ;
struct rmi_function {int num_of_irqs; int /*<<< orphan*/  dev; int /*<<< orphan*/ * irq; scalar_t__ irq_pos; int /*<<< orphan*/  irq_mask; TYPE_1__* rmi_dev; } ;
struct rmi_driver_data {int /*<<< orphan*/  irqdomain; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct rmi_driver_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rmi_function*) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rmi_function*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rmi_irq_chip ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rmi_function *fn,
				   struct rmi_function_handler *handler)
{
	struct rmi_driver_data *drvdata = FUNC1(&fn->rmi_dev->dev);
	int i, error;

	for (i = 0; i < fn->num_of_irqs; i++) {
		FUNC8(fn->irq_pos + i, fn->irq_mask);

		fn->irq[i] = FUNC4(drvdata->irqdomain,
						fn->irq_pos + i);

		FUNC6(fn->irq[i], fn);
		FUNC5(fn->irq[i], &rmi_irq_chip,
					 handle_simple_irq);
		FUNC7(fn->irq[i], 1);

		error = FUNC3(&fn->dev, fn->irq[i], NULL,
					handler->attention, IRQF_ONESHOT,
					FUNC2(&fn->dev), fn);
		if (error) {
			FUNC0(&fn->dev, "Error %d registering IRQ\n", error);
			return error;
		}
	}

	return 0;
}