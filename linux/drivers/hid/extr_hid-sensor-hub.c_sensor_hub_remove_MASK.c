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
struct sensor_hub_data {int hid_sensor_client_cnt; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; TYPE_1__* hid_sensor_hub_client_devs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ready; scalar_t__ status; } ;
struct hid_sensor_hub_device {TYPE_2__ pending; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct hid_sensor_hub_device* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct sensor_hub_data* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct hid_device *hdev)
{
	struct sensor_hub_data *data = FUNC2(hdev);
	unsigned long flags;
	int i;

	FUNC1(hdev, " hardware removed\n");
	FUNC3(hdev);
	FUNC4(hdev);
	FUNC7(&data->lock, flags);
	for (i = 0; i < data->hid_sensor_client_cnt; ++i) {
		struct hid_sensor_hub_device *hsdev =
			data->hid_sensor_hub_client_devs[i].platform_data;
		if (hsdev->pending.status)
			FUNC0(&hsdev->pending.ready);
	}
	FUNC8(&data->lock, flags);
	FUNC5(&hdev->dev);
	FUNC6(&data->mutex);
}