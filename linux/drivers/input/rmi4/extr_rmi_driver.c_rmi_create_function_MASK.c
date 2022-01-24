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
struct rmi_function {int num_of_irqs; int irq_pos; int /*<<< orphan*/  node; int /*<<< orphan*/  irq_mask; struct rmi_device* rmi_dev; int /*<<< orphan*/  fd; } ;
struct rmi_driver_data {int /*<<< orphan*/  function_list; struct rmi_function* f34_container; struct rmi_function* f01_container; int /*<<< orphan*/  irq_count; } ;
struct device {int dummy; } ;
struct rmi_device {struct device dev; } ;
struct pdt_entry {int function_number; int interrupt_source_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RMI_DEBUG_CORE ; 
 int RMI_SCAN_CONTINUE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct rmi_driver_data* FUNC3 (struct device*) ; 
 struct rmi_function* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pdt_entry const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rmi_function*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rmi_device *rmi_dev,
			       void *ctx, const struct pdt_entry *pdt)
{
	struct device *dev = &rmi_dev->dev;
	struct rmi_driver_data *data = FUNC3(dev);
	int *current_irq_count = ctx;
	struct rmi_function *fn;
	int i;
	int error;

	FUNC6(RMI_DEBUG_CORE, dev, "Initializing F%02X.\n",
			pdt->function_number);

	fn = FUNC4(sizeof(struct rmi_function) +
			FUNC0(data->irq_count) * sizeof(unsigned long),
		     GFP_KERNEL);
	if (!fn) {
		FUNC2(dev, "Failed to allocate memory for F%02X\n",
			pdt->function_number);
		return -ENOMEM;
	}

	FUNC1(&fn->node);
	FUNC7(pdt, &fn->fd);

	fn->rmi_dev = rmi_dev;

	fn->num_of_irqs = pdt->interrupt_source_count;
	fn->irq_pos = *current_irq_count;
	*current_irq_count += fn->num_of_irqs;

	for (i = 0; i < fn->num_of_irqs; i++)
		FUNC9(fn->irq_pos + i, fn->irq_mask);

	error = FUNC8(fn);
	if (error)
		return error;

	if (pdt->function_number == 0x01)
		data->f01_container = fn;
	else if (pdt->function_number == 0x34)
		data->f34_container = fn;

	FUNC5(&fn->node, &data->function_list);

	return RMI_SCAN_CONTINUE;
}