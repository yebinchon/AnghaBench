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
struct cache {int /*<<< orphan*/  policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int NOT_CORE_OPTION ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int FUNC2 (struct cache*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3(struct cache *cache, const char *key, const char *value)
{
	int r = FUNC2(cache, key, value);

	if (r == NOT_CORE_OPTION)
		r = FUNC1(cache->policy, key, value);

	if (r)
		FUNC0("bad config value for %s: %s", key, value);

	return r;
}