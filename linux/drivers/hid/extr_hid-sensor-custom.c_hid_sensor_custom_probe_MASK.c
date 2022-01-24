#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  usage; } ;
struct TYPE_4__ {struct platform_device* pdev; int /*<<< orphan*/  send_event; int /*<<< orphan*/  capture_sample; } ;
struct hid_sensor_custom {struct platform_device* pdev; TYPE_1__ callbacks; int /*<<< orphan*/  mutex; struct hid_sensor_hub_device* hsdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 struct hid_sensor_custom* FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_sensor_attr_group ; 
 int /*<<< orphan*/  hid_sensor_capture_sample ; 
 int FUNC2 (struct hid_sensor_custom*) ; 
 int FUNC3 (struct hid_sensor_custom*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_sensor_custom*) ; 
 int /*<<< orphan*/  hid_sensor_send_event ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct hid_sensor_custom*) ; 
 int FUNC7 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct hid_sensor_custom *sensor_inst;
	struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
	int ret;

	sensor_inst = FUNC1(&pdev->dev, sizeof(*sensor_inst),
				   GFP_KERNEL);
	if (!sensor_inst)
		return -ENOMEM;

	sensor_inst->callbacks.capture_sample = hid_sensor_capture_sample;
	sensor_inst->callbacks.send_event = hid_sensor_send_event;
	sensor_inst->callbacks.pdev = pdev;
	sensor_inst->hsdev = hsdev;
	sensor_inst->pdev = pdev;
	FUNC5(&sensor_inst->mutex);
	FUNC6(pdev, sensor_inst);
	ret = FUNC7(hsdev, hsdev->usage,
					   &sensor_inst->callbacks);
	if (ret < 0) {
		FUNC0(&pdev->dev, "callback reg failed\n");
		return ret;
	}

	ret = FUNC9(&sensor_inst->pdev->dev.kobj,
				 &enable_sensor_attr_group);
	if (ret)
		goto err_remove_callback;

	ret = FUNC2(sensor_inst);
	if (ret)
		goto err_remove_group;

	ret = FUNC3(sensor_inst);
	if (ret)
		goto err_remove_attributes;

	return 0;

err_remove_attributes:
	FUNC4(sensor_inst);
err_remove_group:
	FUNC10(&sensor_inst->pdev->dev.kobj,
			   &enable_sensor_attr_group);
err_remove_callback:
	FUNC8(hsdev, hsdev->usage);

	return ret;
}