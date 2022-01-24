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
struct dmar_drhd_unit {int /*<<< orphan*/  list; } ;
struct acpi_dmar_header {int dummy; } ;
struct acpi_dmar_hardware_unit {int dummy; } ;

/* Variables and functions */
 struct dmar_drhd_unit* FUNC0 (struct acpi_dmar_hardware_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_drhd_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct acpi_dmar_header *header, void *arg)
{
	struct dmar_drhd_unit *dmaru;

	dmaru = FUNC0((struct acpi_dmar_hardware_unit *)header);
	if (dmaru) {
		FUNC2(&dmaru->list);
		FUNC3();
		FUNC1(dmaru);
	}

	return 0;
}