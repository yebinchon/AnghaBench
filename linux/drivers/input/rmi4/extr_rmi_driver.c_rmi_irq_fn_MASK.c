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
struct rmi4_attn_data {int /*<<< orphan*/ * data; int /*<<< orphan*/  irq_status; int /*<<< orphan*/  member_0; } ;
struct rmi_driver_data {int /*<<< orphan*/  attn_fifo; struct rmi4_attn_data attn_data; int /*<<< orphan*/ * irq_status; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RMI_DEBUG_CORE ; 
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct rmi4_attn_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (struct rmi_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct rmi_device *rmi_dev = dev_id;
	struct rmi_driver_data *drvdata = FUNC0(&rmi_dev->dev);
	struct rmi4_attn_data attn_data = {0};
	int ret, count;

	count = FUNC1(&drvdata->attn_fifo, &attn_data);
	if (count) {
		*(drvdata->irq_status) = attn_data.irq_status;
		drvdata->attn_data = attn_data;
	}

	ret = FUNC5(rmi_dev);
	if (ret)
		FUNC4(RMI_DEBUG_CORE, &rmi_dev->dev,
			"Failed to process interrupt request: %d\n", ret);

	if (count) {
		FUNC3(attn_data.data);
		attn_data.data = NULL;
	}

	if (!FUNC2(&drvdata->attn_fifo))
		return FUNC6(irq, dev_id);

	return IRQ_HANDLED;
}