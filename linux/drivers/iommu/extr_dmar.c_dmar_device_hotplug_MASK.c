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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  DMAR_DSM_FUNC_DRHD ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmar_get_dsm_handle ; 
 int /*<<< orphan*/  dmar_global_lock ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(acpi_handle handle, bool insert)
{
	int ret;
	acpi_handle tmp = NULL;
	acpi_status status;

	if (!FUNC5())
		return 0;

	if (FUNC2(handle, DMAR_DSM_FUNC_DRHD)) {
		tmp = handle;
	} else {
		status = FUNC1(ACPI_TYPE_DEVICE, handle,
					     ACPI_UINT32_MAX,
					     dmar_get_dsm_handle,
					     NULL, NULL, &tmp);
		if (FUNC0(status)) {
			FUNC7("Failed to locate _DSM method.\n");
			return -ENXIO;
		}
	}
	if (tmp == NULL)
		return 0;

	FUNC6(&dmar_global_lock);
	if (insert)
		ret = FUNC3(tmp);
	else
		ret = FUNC4(tmp);
	FUNC8(&dmar_global_lock);

	return ret;
}