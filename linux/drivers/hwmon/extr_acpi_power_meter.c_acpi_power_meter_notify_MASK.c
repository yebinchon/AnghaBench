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
typedef  int u32 ;
struct acpi_power_meter_resource {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_POWER_METER_CLASS ; 
#define  METER_NOTIFY_CAP 132 
#define  METER_NOTIFY_CAPPING 131 
#define  METER_NOTIFY_CONFIG 130 
#define  METER_NOTIFY_INTERVAL 129 
#define  METER_NOTIFY_TRIP 128 
 int /*<<< orphan*/  POWER_ALARM_NAME ; 
 int /*<<< orphan*/  POWER_AVERAGE_NAME ; 
 int /*<<< orphan*/  POWER_AVG_INTERVAL_NAME ; 
 int /*<<< orphan*/  POWER_CAP_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct acpi_power_meter_resource* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC13 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  FUNC14 (struct acpi_power_meter_resource*) ; 

__attribute__((used)) static void FUNC15(struct acpi_device *device, u32 event)
{
	struct acpi_power_meter_resource *resource;
	int res;

	if (!device || !FUNC2(device))
		return;

	resource = FUNC2(device);

	FUNC6(&resource->lock);
	switch (event) {
	case METER_NOTIFY_CONFIG:
		FUNC5(resource);
		res = FUNC8(resource);
		if (res)
			break;

		FUNC9(resource);
		FUNC10(resource);
		break;
	case METER_NOTIFY_TRIP:
		FUNC11(&device->dev.kobj, NULL, POWER_AVERAGE_NAME);
		FUNC14(resource);
		break;
	case METER_NOTIFY_CAP:
		FUNC11(&device->dev.kobj, NULL, POWER_CAP_NAME);
		FUNC13(resource);
		break;
	case METER_NOTIFY_INTERVAL:
		FUNC11(&device->dev.kobj, NULL, POWER_AVG_INTERVAL_NAME);
		FUNC12(resource);
		break;
	case METER_NOTIFY_CAPPING:
		FUNC11(&device->dev.kobj, NULL, POWER_ALARM_NAME);
		FUNC3(&device->dev, "Capping in progress.\n");
		break;
	default:
		FUNC0(1, "Unexpected event %d\n", event);
		break;
	}
	FUNC7(&resource->lock);

	FUNC1(ACPI_POWER_METER_CLASS,
					FUNC4(&device->dev), event, 0);
}