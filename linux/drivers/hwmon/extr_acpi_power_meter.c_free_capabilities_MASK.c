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
struct acpi_power_meter_resource {int /*<<< orphan*/  model_number; } ;
typedef  int /*<<< orphan*/  acpi_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct acpi_power_meter_resource *resource)
{
	acpi_string *str;
	int i;

	str = &resource->model_number;
	for (i = 0; i < 3; i++, str++)
		FUNC0(*str);
}