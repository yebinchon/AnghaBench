#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {struct resource* sibling; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* fb_mmio ; 
 struct resource* hyperv_mmio ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct resource *cur_res;
	struct resource *next_res;

	if (hyperv_mmio) {
		if (fb_mmio) {
			FUNC0(hyperv_mmio, fb_mmio->start,
					 FUNC2(fb_mmio));
			fb_mmio = NULL;
		}

		for (cur_res = hyperv_mmio; cur_res; cur_res = next_res) {
			next_res = cur_res->sibling;
			FUNC1(cur_res);
		}
	}

	return 0;
}