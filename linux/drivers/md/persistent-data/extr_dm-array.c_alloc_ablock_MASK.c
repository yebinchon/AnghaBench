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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {TYPE_1__ value_type; TYPE_2__ btree_info; } ;
struct array_block {void* value_size; void* nr_entries; void* max_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  array_validator ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct array_block* FUNC1 (struct dm_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 

__attribute__((used)) static int FUNC3(struct dm_array_info *info, size_t size_of_block,
			uint32_t max_entries,
			struct dm_block **block, struct array_block **ab)
{
	int r;

	r = FUNC2(info->btree_info.tm, &array_validator, block);
	if (r)
		return r;

	(*ab) = FUNC1(*block);
	(*ab)->max_entries = FUNC0(max_entries);
	(*ab)->nr_entries = FUNC0(0);
	(*ab)->value_size = FUNC0(info->value_type.size);

	return 0;
}