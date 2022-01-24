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
struct rmi_driver_data {int enabled; } ;
struct rmi_device_platform_data {int /*<<< orphan*/  irq; } ;
struct rmi_device {int /*<<< orphan*/  dev; TYPE_1__* xport; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct rmi_driver_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct rmi_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct rmi_device_platform_data* FUNC5 (struct rmi_device*) ; 
 int /*<<< orphan*/  rmi_irq_fn ; 

__attribute__((used)) static int FUNC6(struct rmi_device *rmi_dev)
{
	struct rmi_device_platform_data *pdata = FUNC5(rmi_dev);
	struct rmi_driver_data *data = FUNC2(&rmi_dev->dev);
	int irq_flags = FUNC4(pdata->irq);
	int ret;

	if (!irq_flags)
		irq_flags = IRQF_TRIGGER_LOW;

	ret = FUNC3(&rmi_dev->dev, pdata->irq, NULL,
					rmi_irq_fn, irq_flags | IRQF_ONESHOT,
					FUNC0(rmi_dev->xport->dev),
					rmi_dev);
	if (ret < 0) {
		FUNC1(&rmi_dev->dev, "Failed to register interrupt %d\n",
			pdata->irq);

		return ret;
	}

	data->enabled = true;

	return 0;
}