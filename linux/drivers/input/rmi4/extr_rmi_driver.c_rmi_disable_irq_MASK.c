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
struct rmi_driver_data {int enabled; int /*<<< orphan*/  enabled_mutex; int /*<<< orphan*/  attn_fifo; } ;
struct rmi_device_platform_data {int irq; } ;
struct rmi_device {int /*<<< orphan*/  dev; TYPE_1__* xport; } ;
struct rmi4_attn_data {int /*<<< orphan*/  data; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct rmi4_attn_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rmi_device_platform_data* FUNC10 (struct rmi_device*) ; 

void FUNC11(struct rmi_device *rmi_dev, bool enable_wake)
{
	struct rmi_device_platform_data *pdata = FUNC10(rmi_dev);
	struct rmi_driver_data *data = FUNC0(&rmi_dev->dev);
	struct rmi4_attn_data attn_data = {0};
	int irq = pdata->irq;
	int retval, count;

	FUNC8(&data->enabled_mutex);

	if (!data->enabled)
		goto out;

	data->enabled = false;
	FUNC3(irq);
	if (enable_wake && FUNC2(rmi_dev->xport->dev)) {
		retval = FUNC4(irq);
		if (retval)
			FUNC1(&rmi_dev->dev,
				 "Failed to enable irq for wake: %d\n",
				 retval);
	}

	/* make sure the fifo is clean */
	while (!FUNC6(&data->attn_fifo)) {
		count = FUNC5(&data->attn_fifo, &attn_data);
		if (count)
			FUNC7(attn_data.data);
	}

out:
	FUNC9(&data->enabled_mutex);
}