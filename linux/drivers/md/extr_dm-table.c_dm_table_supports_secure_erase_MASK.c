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
struct dm_target {TYPE_1__* type; int /*<<< orphan*/  num_secure_erase_bios; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* iterate_devices ) (struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  device_not_secure_erase_capable ; 
 unsigned int FUNC0 (struct dm_table*) ; 
 struct dm_target* FUNC1 (struct dm_table*,unsigned int) ; 
 scalar_t__ FUNC2 (struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct dm_table *t)
{
	struct dm_target *ti;
	unsigned int i;

	for (i = 0; i < FUNC0(t); i++) {
		ti = FUNC1(t, i);

		if (!ti->num_secure_erase_bios)
			return false;

		if (!ti->type->iterate_devices ||
		    ti->type->iterate_devices(ti, device_not_secure_erase_capable, NULL))
			return false;
	}

	return true;
}