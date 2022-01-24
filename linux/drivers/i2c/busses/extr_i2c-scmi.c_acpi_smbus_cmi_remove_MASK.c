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
struct acpi_smbus_cmi {int /*<<< orphan*/  adapter; } ;
struct acpi_device {int /*<<< orphan*/ * driver_data; } ;

/* Variables and functions */
 struct acpi_smbus_cmi* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_smbus_cmi*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct acpi_smbus_cmi *smbus_cmi = FUNC0(device);

	FUNC1(&smbus_cmi->adapter);
	FUNC2(smbus_cmi);
	device->driver_data = NULL;

	return 0;
}