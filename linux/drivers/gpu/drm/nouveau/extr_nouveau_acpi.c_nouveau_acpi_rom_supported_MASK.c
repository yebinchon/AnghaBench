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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_2__ {int /*<<< orphan*/  rom_handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ nouveau_dsm_priv ; 

bool FUNC3(struct device *dev)
{
	acpi_status status;
	acpi_handle dhandle, rom_handle;

	dhandle = FUNC1(dev);
	if (!dhandle)
		return false;

	status = FUNC2(dhandle, "_ROM", &rom_handle);
	if (FUNC0(status))
		return false;

	nouveau_dsm_priv.rom_handle = rom_handle;
	return true;
}