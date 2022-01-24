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
struct dmar_drhd_unit {int dummy; } ;
struct acpi_dmar_header {int dummy; } ;
struct acpi_dmar_hardware_unit {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct dmar_drhd_unit* FUNC0 (struct acpi_dmar_hardware_unit*) ; 
 int FUNC1 (struct dmar_drhd_unit*,int) ; 
 int FUNC2 (struct dmar_drhd_unit*,int) ; 

__attribute__((used)) static int FUNC3(struct acpi_dmar_header *header, void *arg)
{
	int ret;
	struct dmar_drhd_unit *dmaru;

	dmaru = FUNC0((struct acpi_dmar_hardware_unit *)header);
	if (!dmaru)
		return -ENODEV;

	ret = FUNC2(dmaru, true);
	if (ret == 0)
		ret = FUNC1(dmaru, true);

	return ret;
}