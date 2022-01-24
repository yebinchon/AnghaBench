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
struct rmi_function {int /*<<< orphan*/  dev; struct rmi_device* rmi_dev; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;
struct rmi_driver_data {TYPE_1__ attn_data; } ;
struct rmi_device {int /*<<< orphan*/  dev; } ;
struct rmi_2d_sensor {int pkt_size; int attn_size; int /*<<< orphan*/  input; int /*<<< orphan*/ * data_pkt; } ;
struct f12_data {size_t data1_offset; scalar_t__ data1; int /*<<< orphan*/  data_addr; struct rmi_2d_sensor sensor; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f12_data*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct rmi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *ctx)
{
	int retval;
	struct rmi_function *fn = ctx;
	struct rmi_device *rmi_dev = fn->rmi_dev;
	struct rmi_driver_data *drvdata = FUNC2(&rmi_dev->dev);
	struct f12_data *f12 = FUNC2(&fn->dev);
	struct rmi_2d_sensor *sensor = &f12->sensor;
	int valid_bytes = sensor->pkt_size;

	if (drvdata->attn_data.data) {
		if (sensor->attn_size > drvdata->attn_data.size)
			valid_bytes = drvdata->attn_data.size;
		else
			valid_bytes = sensor->attn_size;
		FUNC4(sensor->data_pkt, drvdata->attn_data.data,
			valid_bytes);
		drvdata->attn_data.data += valid_bytes;
		drvdata->attn_data.size -= valid_bytes;
	} else {
		retval = FUNC6(rmi_dev, f12->data_addr,
					sensor->data_pkt, sensor->pkt_size);
		if (retval < 0) {
			FUNC1(&fn->dev, "Failed to read object data. Code: %d.\n",
				retval);
			return FUNC0(retval);
		}
	}

	if (f12->data1)
		FUNC5(f12,
			&sensor->data_pkt[f12->data1_offset], valid_bytes);

	FUNC3(sensor->input);

	return IRQ_HANDLED;
}