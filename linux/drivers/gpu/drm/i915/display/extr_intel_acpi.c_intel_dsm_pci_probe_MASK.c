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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int INTEL_DSM_FN_PLATFORM_MUX_INFO ; 
 int /*<<< orphan*/  INTEL_DSM_REVISION_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  intel_dsm_guid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_handle FUNC4(struct pci_dev *pdev)
{
	acpi_handle dhandle;

	dhandle = FUNC0(&pdev->dev);
	if (!dhandle)
		return NULL;

	if (!FUNC2(dhandle, &intel_dsm_guid, INTEL_DSM_REVISION_ID,
			    1 << INTEL_DSM_FN_PLATFORM_MUX_INFO)) {
		FUNC1("no _DSM method for intel device\n");
		return NULL;
	}

	FUNC3(dhandle);

	return dhandle;
}