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
struct rmi_driver_data {int enabled; int /*<<< orphan*/  enabled_mutex; } ;
struct rmi_device_platform_data {int irq; } ;
struct rmi_device {int /*<<< orphan*/  dev; TYPE_1__* xport; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_BOTH ; 
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rmi_device_platform_data* FUNC8 (struct rmi_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct rmi_device*) ; 

void FUNC10(struct rmi_device *rmi_dev, bool clear_wake)
{
	struct rmi_device_platform_data *pdata = FUNC8(rmi_dev);
	struct rmi_driver_data *data = FUNC0(&rmi_dev->dev);
	int irq = pdata->irq;
	int irq_flags;
	int retval;

	FUNC6(&data->enabled_mutex);

	if (data->enabled)
		goto out;

	FUNC4(irq);
	data->enabled = true;
	if (clear_wake && FUNC2(rmi_dev->xport->dev)) {
		retval = FUNC3(irq);
		if (retval)
			FUNC1(&rmi_dev->dev,
				 "Failed to disable irq for wake: %d\n",
				 retval);
	}

	/*
	 * Call rmi_process_interrupt_requests() after enabling irq,
	 * otherwise we may lose interrupt on edge-triggered systems.
	 */
	irq_flags = FUNC5(pdata->irq);
	if (irq_flags & IRQ_TYPE_EDGE_BOTH)
		FUNC9(rmi_dev);

out:
	FUNC7(&data->enabled_mutex);
}