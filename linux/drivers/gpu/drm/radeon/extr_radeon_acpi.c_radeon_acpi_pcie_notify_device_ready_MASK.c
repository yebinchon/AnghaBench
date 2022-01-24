#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_object {int dummy; } acpi_object ;
struct TYPE_4__ {int /*<<< orphan*/  pcie_dev_rdy; } ;
struct radeon_atcs {TYPE_2__ functions; } ;
struct radeon_device {TYPE_1__* pdev; struct radeon_atcs atcs; } ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ATCS_FUNCTION_PCIE_DEVICE_READY_NOTIFICATION ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (union acpi_object*) ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct radeon_device *rdev)
{
	acpi_handle handle;
	union acpi_object *info;
	struct radeon_atcs *atcs = &rdev->atcs;

	/* Get the device handle */
	handle = FUNC0(&rdev->pdev->dev);
	if (!handle)
		return -EINVAL;

	if (!atcs->functions.pcie_dev_rdy)
		return -EINVAL;

	info = FUNC2(handle, ATCS_FUNCTION_PCIE_DEVICE_READY_NOTIFICATION, NULL);
	if (!info)
		return -EIO;

	FUNC1(info);

	return 0;
}