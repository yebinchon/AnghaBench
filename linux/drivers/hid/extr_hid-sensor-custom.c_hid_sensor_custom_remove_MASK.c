#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  usage; } ;
struct hid_sensor_custom {TYPE_3__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  enable_sensor_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct hid_sensor_custom*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_sensor_custom*) ; 
 struct hid_sensor_custom* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct hid_sensor_custom *sensor_inst = FUNC2(pdev);
	struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;

	FUNC0(sensor_inst);
	FUNC1(sensor_inst);
	FUNC4(&sensor_inst->pdev->dev.kobj,
			   &enable_sensor_attr_group);
	FUNC3(hsdev, hsdev->usage);

	return 0;
}