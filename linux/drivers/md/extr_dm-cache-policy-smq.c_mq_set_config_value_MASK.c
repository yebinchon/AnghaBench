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
struct dm_cache_policy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct dm_cache_policy *p,
			       const char *key, const char *value)
{
	unsigned long tmp;

	if (FUNC1(value, 10, &tmp))
		return -EINVAL;

	if (!FUNC2(key, "random_threshold") ||
	    !FUNC2(key, "sequential_threshold") ||
	    !FUNC2(key, "discard_promote_adjustment") ||
	    !FUNC2(key, "read_promote_adjustment") ||
	    !FUNC2(key, "write_promote_adjustment")) {
		FUNC0("tunable '%s' no longer has any effect, mq policy is now an alias for smq", key);
		return 0;
	}

	return -EINVAL;
}