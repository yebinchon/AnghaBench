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
 struct sensor_hub_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hid_sensor_hub_device *hsdev)
{
	struct sensor_hub_data *data =  FUNC0(hsdev->hdev);

	FUNC2(&data->mutex);
	data->ref_cnt--;
	if (!data->ref_cnt)
		FUNC1(hsdev->hdev);
	FUNC3(&data->mutex);
}