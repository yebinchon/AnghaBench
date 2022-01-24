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
struct acpi_buffer {int member_0; char* member_1; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_method_name ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static acpi_handle FUNC6(acpi_handle dhandle)
{
	acpi_handle handle = NULL;
	char acpi_method_name[255] = { 0 };
	struct acpi_buffer buffer = { sizeof(acpi_method_name), acpi_method_name };
	acpi_status status;

	/* For PX/HG systems, ATIF and ATPX are in the iGPU's namespace, on dGPU only
	 * systems, ATIF is in the dGPU's namespace.
	 */
	status = FUNC2(dhandle, "ATIF", &handle);
	if (FUNC0(status))
		goto out;

	if (FUNC5()) {
		status = FUNC2(FUNC4(), "ATIF",
					 &handle);
		if (FUNC0(status))
			goto out;
	}

	FUNC1("No ATIF handle found\n");
	return NULL;
out:
	FUNC3(handle, ACPI_FULL_PATHNAME, &buffer);
	FUNC1("Found ATIF handle %s\n", acpi_method_name);
	return handle;
}