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
typedef  scalar_t__ uint64_t ;
struct cblock_range {void* begin; void* end; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (char const*,char*,scalar_t__*,char*,...) ; 
 void* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct cache *cache, const char *str,
			      struct cblock_range *result)
{
	char dummy;
	uint64_t b, e;
	int r;

	/*
	 * Try and parse form (ii) first.
	 */
	r = FUNC3(str, "%llu-%llu%c", &b, &e, &dummy);
	if (r < 0)
		return r;

	if (r == 2) {
		result->begin = FUNC4(b);
		result->end = FUNC4(e);
		return 0;
	}

	/*
	 * That didn't work, try form (i).
	 */
	r = FUNC3(str, "%llu%c", &b, &dummy);
	if (r < 0)
		return r;

	if (r == 1) {
		result->begin = FUNC4(b);
		result->end = FUNC4(FUNC2(result->begin) + 1u);
		return 0;
	}

	FUNC0("%s: invalid cblock range '%s'", FUNC1(cache), str);
	return -EINVAL;
}