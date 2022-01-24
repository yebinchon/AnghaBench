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
struct acpi_table_header {size_t length; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  CRAT_SIGNATURE ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 scalar_t__ ignore_crat ; 
 void* FUNC3 (struct acpi_table_header*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(void **crat_image, size_t *size)
{
	struct acpi_table_header *crat_table;
	acpi_status status;
	void *pcrat_image;

	if (!crat_image)
		return -EINVAL;

	*crat_image = NULL;

	/* Fetch the CRAT table from ACPI */
	status = FUNC2(CRAT_SIGNATURE, 0, &crat_table);
	if (status == AE_NOT_FOUND) {
		FUNC6("CRAT table not found\n");
		return -ENODATA;
	} else if (FUNC0(status)) {
		const char *err = FUNC1(status);

		FUNC4("CRAT table error: %s\n", err);
		return -EINVAL;
	}

	if (ignore_crat) {
		FUNC5("CRAT table disabled by module option\n");
		return -ENODATA;
	}

	pcrat_image = FUNC3(crat_table, crat_table->length, GFP_KERNEL);
	if (!pcrat_image)
		return -ENOMEM;

	*crat_image = pcrat_image;
	*size = crat_table->length;

	return 0;
}