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
struct sensor_hub_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ref_cnt; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sensor_hub_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hid_sensor_hub_device *hsdev)
{
	int ret = 0;
	struct sensor_hub_data *data =  FUNC1(hsdev->hdev);

	FUNC3(&data->mutex);
	if (!data->ref_cnt) {
		ret = FUNC2(hsdev->hdev);
		if (ret) {
			FUNC0(hsdev->hdev, "failed to open hid device\n");
			FUNC4(&data->mutex);
			return ret;
		}
	}
	data->ref_cnt++;
	FUNC4(&data->mutex);

	return ret;
}