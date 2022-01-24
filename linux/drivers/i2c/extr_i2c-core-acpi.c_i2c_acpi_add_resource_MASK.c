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
struct resource {int dummy; } ;
struct acpi_resource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acpi_resource*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC1 (struct resource*,int) ; 

__attribute__((used)) static int FUNC2(struct acpi_resource *ares, void *data)
{
	int *irq = data;
	struct resource r;

	if (*irq <= 0 && FUNC0(ares, 0, &r))
		*irq = FUNC1(&r, 1);

	return 1; /* No need to add resource to the list */
}