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
struct cache {unsigned long migration_threshold; } ;

/* Variables and functions */
 int EINVAL ; 
 int NOT_CORE_OPTION ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(struct cache *cache, const char *key, const char *value)
{
	unsigned long tmp;

	if (!FUNC1(key, "migration_threshold")) {
		if (FUNC0(value, 10, &tmp))
			return -EINVAL;

		cache->migration_threshold = tmp;
		return 0;
	}

	return NOT_CORE_OPTION;
}