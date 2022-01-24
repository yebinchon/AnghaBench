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
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct cache*,char const*,char const*) ; 

__attribute__((used)) static int FUNC2(struct cache *cache, int argc, const char **argv)
{
	int r = 0;

	if (argc & 1) {
		FUNC0("Odd number of policy arguments given but they should be <key> <value> pairs.");
		return -EINVAL;
	}

	while (argc) {
		r = FUNC1(cache, argv[0], argv[1]);
		if (r)
			break;

		argc -= 2;
		argv += 2;
	}

	return r;
}