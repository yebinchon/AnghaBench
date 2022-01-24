#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sensor_hub_data {size_t hid_sensor_client_cnt; TYPE_1__* hid_sensor_hub_client_devs; int /*<<< orphan*/  dyn_callback_list; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dyn_callback_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  quirks; } ;
struct mutex {int dummy; } ;
struct mfd_cell {int dummy; } ;
struct hid_sensor_hub_device {scalar_t__ usage; int start_collection_index; int end_collection_index; int /*<<< orphan*/ * mutex_ptr; int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; struct hid_device* hdev; } ;
struct hid_device_id {int /*<<< orphan*/  driver_data; } ;
struct hid_device {int maxcollection; int /*<<< orphan*/  dev; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; struct hid_collection* collection; int /*<<< orphan*/  inputs; } ;
struct hid_collection {scalar_t__ type; scalar_t__ usage; } ;
struct TYPE_3__ {char* name; int pdata_size; struct hid_sensor_hub_device* platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HID_COLLECTION_APPLICATION ; 
 scalar_t__ HID_COLLECTION_PHYSICAL ; 
 int HID_MAX_PHY_DEVICES ; 
 scalar_t__ HID_USAGE_SENSOR_COLLECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*) ; 
 int FUNC6 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*) ; 
 int FUNC8 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,struct sensor_hub_data*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hid_device *hdev,
				const struct hid_device_id *id)
{
	int ret;
	struct sensor_hub_data *sd;
	int i;
	char *name;
	int dev_cnt;
	struct hid_sensor_hub_device *hsdev;
	struct hid_sensor_hub_device *last_hsdev = NULL;
	struct hid_sensor_hub_device *collection_hsdev = NULL;

	sd = FUNC3(&hdev->dev, sizeof(*sd), GFP_KERNEL);
	if (!sd) {
		FUNC5(hdev, "cannot allocate Sensor data\n");
		return -ENOMEM;
	}

	FUNC9(hdev, sd);
	sd->quirks = id->driver_data;

	FUNC13(&sd->lock);
	FUNC13(&sd->dyn_callback_lock);
	FUNC11(&sd->mutex);
	ret = FUNC8(hdev);
	if (ret) {
		FUNC5(hdev, "parse failed\n");
		return ret;
	}
	FUNC0(&hdev->inputs);

	ret = FUNC6(hdev, 0);
	if (ret) {
		FUNC5(hdev, "hw start failed\n");
		return ret;
	}
	FUNC0(&sd->dyn_callback_list);
	sd->hid_sensor_client_cnt = 0;

	dev_cnt = FUNC12(hdev);
	if (dev_cnt > HID_MAX_PHY_DEVICES) {
		FUNC5(hdev, "Invalid Physical device count\n");
		ret = -EINVAL;
		goto err_stop_hw;
	}
	sd->hid_sensor_hub_client_devs = FUNC2(&hdev->dev,
						      dev_cnt,
						      sizeof(struct mfd_cell),
						      GFP_KERNEL);
	if (sd->hid_sensor_hub_client_devs == NULL) {
		FUNC5(hdev, "Failed to allocate memory for mfd cells\n");
		ret = -ENOMEM;
		goto err_stop_hw;
	}

	for (i = 0; i < hdev->maxcollection; ++i) {
		struct hid_collection *collection = &hdev->collection[i];

		if (collection->type == HID_COLLECTION_PHYSICAL ||
		    collection->type == HID_COLLECTION_APPLICATION) {

			hsdev = FUNC3(&hdev->dev, sizeof(*hsdev),
					     GFP_KERNEL);
			if (!hsdev) {
				FUNC5(hdev, "cannot allocate hid_sensor_hub_device\n");
				ret = -ENOMEM;
				goto err_stop_hw;
			}
			hsdev->hdev = hdev;
			hsdev->vendor_id = hdev->vendor;
			hsdev->product_id = hdev->product;
			hsdev->usage = collection->usage;
			hsdev->mutex_ptr = FUNC3(&hdev->dev,
							sizeof(struct mutex),
							GFP_KERNEL);
			if (!hsdev->mutex_ptr) {
				ret = -ENOMEM;
				goto err_stop_hw;
			}
			FUNC11(hsdev->mutex_ptr);
			hsdev->start_collection_index = i;
			if (last_hsdev)
				last_hsdev->end_collection_index = i;
			last_hsdev = hsdev;
			name = FUNC1(&hdev->dev, GFP_KERNEL,
					      "HID-SENSOR-%x",
					      collection->usage);
			if (name == NULL) {
				FUNC5(hdev, "Failed MFD device name\n");
				ret = -ENOMEM;
				goto err_stop_hw;
			}
			sd->hid_sensor_hub_client_devs[
				sd->hid_sensor_client_cnt].name = name;
			sd->hid_sensor_hub_client_devs[
				sd->hid_sensor_client_cnt].platform_data =
							hsdev;
			sd->hid_sensor_hub_client_devs[
				sd->hid_sensor_client_cnt].pdata_size =
							sizeof(*hsdev);
			FUNC4(hdev, "Adding %s:%d\n", name,
					hsdev->start_collection_index);
			sd->hid_sensor_client_cnt++;
			if (collection_hsdev)
				collection_hsdev->end_collection_index = i;
			if (collection->type == HID_COLLECTION_APPLICATION &&
			    collection->usage == HID_USAGE_SENSOR_COLLECTION)
				collection_hsdev = hsdev;
		}
	}
	if (last_hsdev)
		last_hsdev->end_collection_index = i;
	if (collection_hsdev)
		collection_hsdev->end_collection_index = i;

	ret = FUNC10(&hdev->dev,
			sd->hid_sensor_hub_client_devs,
			sd->hid_sensor_client_cnt);
	if (ret < 0)
		goto err_stop_hw;

	return ret;

err_stop_hw:
	FUNC7(hdev);

	return ret;
}