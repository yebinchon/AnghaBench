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
struct TYPE_4__ {int flags; scalar_t__ configurable_cap; } ;
struct acpi_power_meter_resource {TYPE_2__ caps; TYPE_1__* acpi_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int POWER_METER_CAN_CAP ; 
 int POWER_METER_CAN_MEASURE ; 
 int POWER_METER_CAN_TRIP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  meter_attrs ; 
 int /*<<< orphan*/  misc_attrs ; 
 int /*<<< orphan*/  misc_cap_attrs ; 
 int FUNC2 (struct acpi_power_meter_resource*) ; 
 int FUNC3 (struct acpi_power_meter_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_power_meter_resource*) ; 
 int /*<<< orphan*/  ro_cap_attrs ; 
 int /*<<< orphan*/  rw_cap_attrs ; 
 int /*<<< orphan*/  trip_attrs ; 

__attribute__((used)) static int FUNC5(struct acpi_power_meter_resource *resource)
{
	int res = 0;

	res = FUNC2(resource);
	if (res)
		return res;

	if (resource->caps.flags & POWER_METER_CAN_MEASURE) {
		res = FUNC3(resource, meter_attrs);
		if (res)
			goto error;
	}

	if (resource->caps.flags & POWER_METER_CAN_CAP) {
		if (!FUNC0()) {
			FUNC1(&resource->acpi_dev->dev,
				 "Ignoring unsafe software power cap!\n");
			goto skip_unsafe_cap;
		}

		if (resource->caps.configurable_cap)
			res = FUNC3(resource, rw_cap_attrs);
		else
			res = FUNC3(resource, ro_cap_attrs);

		if (res)
			goto error;

		res = FUNC3(resource, misc_cap_attrs);
		if (res)
			goto error;
	}

skip_unsafe_cap:
	if (resource->caps.flags & POWER_METER_CAN_TRIP) {
		res = FUNC3(resource, trip_attrs);
		if (res)
			goto error;
	}

	res = FUNC3(resource, misc_attrs);
	if (res)
		goto error;

	return res;
error:
	FUNC4(resource);
	return res;
}