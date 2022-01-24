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
struct acpi_device {scalar_t__ driver_gpios; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acpi_device*) ; 

__attribute__((used)) static bool FUNC1(struct acpi_device *adev,
				     const char *con_id)
{
	/* Never allow fallback if the device has properties */
	if (FUNC0(adev) || adev->driver_gpios)
		return false;

	return con_id == NULL;
}