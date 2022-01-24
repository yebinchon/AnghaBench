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
struct dm_target {TYPE_1__* type; scalar_t__ flush_supported; int /*<<< orphan*/  num_flush_bios; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* iterate_devices ) (struct dm_target*,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  device_flush_capable ; 
 unsigned int FUNC0 (struct dm_table*) ; 
 struct dm_target* FUNC1 (struct dm_table*,unsigned int) ; 
 scalar_t__ FUNC2 (struct dm_target*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static bool FUNC3(struct dm_table *t, unsigned long flush)
{
	struct dm_target *ti;
	unsigned i;

	/*
	 * Require at least one underlying device to support flushes.
	 * t->devices includes internal dm devices such as mirror logs
	 * so we need to use iterate_devices here, which targets
	 * supporting flushes must provide.
	 */
	for (i = 0; i < FUNC0(t); i++) {
		ti = FUNC1(t, i);

		if (!ti->num_flush_bios)
			continue;

		if (ti->flush_supported)
			return true;

		if (ti->type->iterate_devices &&
		    ti->type->iterate_devices(ti, device_flush_capable, (void *) flush))
			return true;
	}

	return false;
}