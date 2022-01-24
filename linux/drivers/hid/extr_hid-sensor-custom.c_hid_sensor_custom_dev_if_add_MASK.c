#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct hid_sensor_custom {int /*<<< orphan*/  data_fifo; TYPE_2__ custom_dev; TYPE_1__* pdev; int /*<<< orphan*/  wait; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CUSTOM_FIFO_SIZE ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hid_sensor_custom_fops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct hid_sensor_custom *sensor_inst)
{
	int ret;

	ret = FUNC2(&sensor_inst->data_fifo, HID_CUSTOM_FIFO_SIZE,
			  GFP_KERNEL);
	if (ret)
		return ret;

	FUNC1(&sensor_inst->wait);

	sensor_inst->custom_dev.minor = MISC_DYNAMIC_MINOR;
	sensor_inst->custom_dev.name = FUNC0(&sensor_inst->pdev->dev);
	sensor_inst->custom_dev.fops = &hid_sensor_custom_fops,
	ret = FUNC4(&sensor_inst->custom_dev);
	if (ret) {
		FUNC3(&sensor_inst->data_fifo);
		return ret;
	}
	return 0;
}