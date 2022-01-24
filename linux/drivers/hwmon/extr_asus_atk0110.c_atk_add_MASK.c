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
struct TYPE_4__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ string; TYPE_1__ package; } ;
struct atk_data {int disable_ec; scalar_t__ old_interface; int /*<<< orphan*/  atk_handle; int /*<<< orphan*/  sensor_list; struct acpi_device* acpi_dev; } ;
struct acpi_device {struct atk_data* driver_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/  length; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  BOARD_ID ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct atk_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct atk_data*) ; 
 int FUNC6 (struct atk_data*) ; 
 int FUNC7 (struct atk_data*) ; 
 int FUNC8 (struct atk_data*) ; 
 int FUNC9 (struct atk_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 struct atk_data* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct acpi_device *device)
{
	acpi_status ret;
	int err;
	struct acpi_buffer buf;
	union acpi_object *obj;
	struct atk_data *data;

	FUNC10(&device->dev, "adding...\n");

	data = FUNC13(&device->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->acpi_dev = device;
	data->atk_handle = device->handle;
	FUNC1(&data->sensor_list);
	data->disable_ec = false;

	buf.length = ACPI_ALLOCATE_BUFFER;
	ret = FUNC2(data->atk_handle, BOARD_ID, NULL,
			&buf, ACPI_TYPE_PACKAGE);
	if (ret != AE_OK) {
		FUNC10(&device->dev, "atk: method MBIF not found\n");
	} else {
		obj = buf.pointer;
		if (obj->package.count >= 2) {
			union acpi_object *id = &obj->package.elements[1];
			if (id->type == ACPI_TYPE_STRING)
				FUNC10(&device->dev, "board ID = %s\n",
					id->string.pointer);
		}
		FUNC0(buf.pointer);
	}

	err = FUNC8(data);
	if (err) {
		FUNC11(&device->dev, "No usable hwmon interface detected\n");
		goto out;
	}

	if (data->old_interface) {
		FUNC10(&device->dev, "Using old hwmon interface\n");
		err = FUNC6(data);
	} else {
		FUNC10(&device->dev, "Using new hwmon interface\n");
		err = FUNC5(data);
	}
	if (err < 0)
		goto out;
	if (err == 0) {
		FUNC12(&device->dev,
			 "No usable sensor detected, bailing out\n");
		err = -ENODEV;
		goto out;
	}

	err = FUNC7(data);
	if (err)
		goto out;
	err = FUNC9(data);
	if (err)
		goto out;

	FUNC3(data);

	device->driver_data = data;
	return 0;
out:
	if (data->disable_ec)
		FUNC4(data, 0);
	return err;
}