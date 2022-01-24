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
typedef  unsigned int uint32_t ;
struct dm_btree_value_type {int /*<<< orphan*/  context; int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_array_info {struct dm_btree_value_type value_type; } ;
struct array_block {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  max_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_array_info*,struct array_block*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dm_array_info *info, struct array_block *ab,
			unsigned new_nr)
{
	unsigned i;
	uint32_t nr_entries;
	struct dm_btree_value_type *vt = &info->value_type;

	FUNC0(new_nr > FUNC3(ab->max_entries));
	FUNC0(new_nr > FUNC3(ab->nr_entries));

	nr_entries = FUNC3(ab->nr_entries);
	for (i = nr_entries; i > new_nr; i--)
		if (vt->dec)
			vt->dec(vt->context, FUNC2(info, ab, i - 1));
	ab->nr_entries = FUNC1(new_nr);
}