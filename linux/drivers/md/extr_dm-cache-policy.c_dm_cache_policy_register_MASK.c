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
struct dm_cache_policy_type {int hint_size; unsigned long long name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_list ; 
 int /*<<< orphan*/  register_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dm_cache_policy_type *type)
{
	int r;

	/* One size fits all for now */
	if (type->hint_size != 0 && type->hint_size != 4) {
		FUNC0("hint size must be 0 or 4 but %llu supplied.", (unsigned long long) type->hint_size);
		return -EINVAL;
	}

	FUNC3(&register_lock);
	if (FUNC1(type->name)) {
		FUNC0("attempt to register policy under duplicate name %s", type->name);
		r = -EINVAL;
	} else {
		FUNC2(&type->list, &register_list);
		r = 0;
	}
	FUNC4(&register_lock);

	return r;
}