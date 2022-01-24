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
struct mapped_device {int dummy; } ;
struct dm_target {int /*<<< orphan*/  num_flush_bios; int /*<<< orphan*/  per_io_data_size; } ;
struct dm_table {unsigned int num_targets; int /*<<< orphan*/  mempools; int /*<<< orphan*/  integrity_supported; struct dm_target* targets; } ;
typedef  enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_TYPE_NONE ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*,int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC3 (struct dm_table*) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dm_table *t, struct mapped_device *md)
{
	enum dm_queue_mode type = FUNC3(t);
	unsigned per_io_data_size = 0;
	unsigned min_pool_size = 0;
	struct dm_target *ti;
	unsigned i;

	if (FUNC5(type == DM_TYPE_NONE)) {
		FUNC0("no table type is set, can't allocate mempools");
		return -EINVAL;
	}

	if (FUNC1(type))
		for (i = 0; i < t->num_targets; i++) {
			ti = t->targets + i;
			per_io_data_size = FUNC4(per_io_data_size, ti->per_io_data_size);
			min_pool_size = FUNC4(min_pool_size, ti->num_flush_bios);
		}

	t->mempools = FUNC2(md, type, t->integrity_supported,
					   per_io_data_size, min_pool_size);
	if (!t->mempools)
		return -ENOMEM;

	return 0;
}