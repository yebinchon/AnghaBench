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
struct rmi_driver_data {int /*<<< orphan*/  attn_fifo; int /*<<< orphan*/  enabled; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
struct rmi4_attn_data {unsigned long irq_status; size_t size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct rmi_driver_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rmi4_attn_data) ; 
 void* FUNC2 (void*,size_t,int /*<<< orphan*/ ) ; 

void FUNC3(struct rmi_device *rmi_dev, unsigned long irq_status,
		       void *data, size_t size)
{
	struct rmi_driver_data *drvdata = FUNC0(&rmi_dev->dev);
	struct rmi4_attn_data attn_data;
	void *fifo_data;

	if (!drvdata->enabled)
		return;

	fifo_data = FUNC2(data, size, GFP_ATOMIC);
	if (!fifo_data)
		return;

	attn_data.irq_status = irq_status;
	attn_data.size = size;
	attn_data.data = fifo_data;

	FUNC1(&drvdata->attn_fifo, attn_data);
}