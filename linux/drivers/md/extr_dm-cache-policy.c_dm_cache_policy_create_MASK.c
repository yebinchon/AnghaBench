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
struct dm_cache_policy_type {struct dm_cache_policy* (* create ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_cache_policy {struct dm_cache_policy_type* private; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dm_cache_policy* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dm_cache_policy_type* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_cache_policy_type*) ; 
 struct dm_cache_policy* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct dm_cache_policy *FUNC5(const char *name,
					       dm_cblock_t cache_size,
					       sector_t origin_size,
					       sector_t cache_block_size)
{
	struct dm_cache_policy *p = NULL;
	struct dm_cache_policy_type *type;

	type = FUNC2(name);
	if (!type) {
		FUNC0("unknown policy type");
		return FUNC1(-EINVAL);
	}

	p = type->create(cache_size, origin_size, cache_block_size);
	if (!p) {
		FUNC3(type);
		return FUNC1(-ENOMEM);
	}
	p->private = type;

	return p;
}