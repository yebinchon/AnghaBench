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
struct dm_cache_policy_type {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  EINVAL ; 
 struct dm_cache_policy_type* FUNC1 (int /*<<< orphan*/ ) ; 
 struct dm_cache_policy_type* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dm_cache_policy_type *FUNC4(const char *name)
{
	struct dm_cache_policy_type *t = FUNC2(name);

	if (t && !FUNC3(t->owner)) {
		FUNC0("couldn't get module %s", name);
		t = FUNC1(-EINVAL);
	}

	return t;
}