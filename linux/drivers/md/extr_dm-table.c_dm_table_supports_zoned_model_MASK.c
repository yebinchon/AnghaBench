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
struct dm_target {TYPE_1__* type; } ;
struct dm_table {int dummy; } ;
typedef  enum blk_zoned_model { ____Placeholder_blk_zoned_model } blk_zoned_model ;
struct TYPE_2__ {int /*<<< orphan*/  (* iterate_devices ) (struct dm_target*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int BLK_ZONED_HM ; 
 int /*<<< orphan*/  device_is_zoned_model ; 
 unsigned int FUNC0 (struct dm_table*) ; 
 struct dm_target* FUNC1 (struct dm_table*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC4(struct dm_table *t,
					  enum blk_zoned_model zoned_model)
{
	struct dm_target *ti;
	unsigned i;

	for (i = 0; i < FUNC0(t); i++) {
		ti = FUNC1(t, i);

		if (zoned_model == BLK_ZONED_HM &&
		    !FUNC2(ti->type))
			return false;

		if (!ti->type->iterate_devices ||
		    !ti->type->iterate_devices(ti, device_is_zoned_model, &zoned_model))
			return false;
	}

	return true;
}