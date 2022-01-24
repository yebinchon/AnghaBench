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
struct cblock_range {int dummy; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int FUNC2 (struct cache*,char const*,struct cblock_range*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*) ; 
 int FUNC4 (struct cache*,struct cblock_range*) ; 
 int FUNC5 (struct cache*,struct cblock_range*) ; 

__attribute__((used)) static int FUNC6(struct cache *cache, unsigned count,
					      const char **cblock_ranges)
{
	int r = 0;
	unsigned i;
	struct cblock_range range;

	if (!FUNC3(cache)) {
		FUNC0("%s: cache has to be in passthrough mode for invalidation",
		      FUNC1(cache));
		return -EPERM;
	}

	for (i = 0; i < count; i++) {
		r = FUNC2(cache, cblock_ranges[i], &range);
		if (r)
			break;

		r = FUNC5(cache, &range);
		if (r)
			break;

		/*
		 * Pass begin and end origin blocks to the worker and wake it.
		 */
		r = FUNC4(cache, &range);
		if (r)
			break;
	}

	return r;
}