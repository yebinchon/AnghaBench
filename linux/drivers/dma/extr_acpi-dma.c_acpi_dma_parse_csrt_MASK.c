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
struct acpi_table_header {int dummy; } ;
struct TYPE_2__ {int length; } ;
struct acpi_table_csrt {TYPE_1__ header; } ;
struct acpi_dma {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct acpi_csrt_group {int length; } ;
typedef  scalar_t__ acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_SIG_CSRT ; 
 scalar_t__ AE_NOT_FOUND ; 
 int FUNC1 (struct acpi_csrt_group*,struct acpi_device*,struct acpi_dma*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct acpi_device *adev, struct acpi_dma *adma)
{
	struct acpi_csrt_group *grp, *end;
	struct acpi_table_csrt *csrt;
	acpi_status status;
	int ret;

	status = FUNC2(ACPI_SIG_CSRT, 0,
				(struct acpi_table_header **)&csrt);
	if (FUNC0(status)) {
		if (status != AE_NOT_FOUND)
			FUNC3(&adev->dev, "failed to get the CSRT table\n");
		return;
	}

	grp = (struct acpi_csrt_group *)(csrt + 1);
	end = (struct acpi_csrt_group *)((void *)csrt + csrt->header.length);

	while (grp < end) {
		ret = FUNC1(grp, adev, adma);
		if (ret < 0) {
			FUNC3(&adev->dev,
				 "error in parsing resource group\n");
			return;
		}

		grp = (struct acpi_csrt_group *)((void *)grp + grp->length);
	}
}