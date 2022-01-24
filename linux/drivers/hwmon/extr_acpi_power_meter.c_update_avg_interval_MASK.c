#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct acpi_power_meter_resource {unsigned long long avg_interval; TYPE_1__* acpi_dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC3(struct acpi_power_meter_resource *resource)
{
	unsigned long long data;
	acpi_status status;

	status = FUNC2(resource->acpi_dev->handle, "_GAI",
				       NULL, &data);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "Evaluating _GAI"));
		return -ENODEV;
	}

	resource->avg_interval = data;
	return 0;
}