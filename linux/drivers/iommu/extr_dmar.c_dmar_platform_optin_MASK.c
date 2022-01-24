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
struct acpi_table_header {int dummy; } ;
struct acpi_table_dmar {int flags; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_DMAR ; 
 int DMAR_PLATFORM_OPT_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_header*) ; 

bool FUNC3(void)
{
	struct acpi_table_dmar *dmar;
	acpi_status status;
	bool ret;

	status = FUNC1(ACPI_SIG_DMAR, 0,
				(struct acpi_table_header **)&dmar);
	if (FUNC0(status))
		return false;

	ret = !!(dmar->flags & DMAR_PLATFORM_OPT_IN);
	FUNC2((struct acpi_table_header *)dmar);

	return ret;
}