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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int FUNC2 (struct cache*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*) ; 
 int FUNC4 (struct cache*) ; 
 int FUNC5 (struct cache*) ; 
 int FUNC6 (struct cache*) ; 

__attribute__((used)) static bool FUNC7(struct cache *cache)
{
	int r1, r2, r3, r4;

	r1 = FUNC4(cache);
	if (r1)
		FUNC0("%s: could not write dirty bitset", FUNC1(cache));

	r2 = FUNC5(cache);
	if (r2)
		FUNC0("%s: could not write discard bitset", FUNC1(cache));

	FUNC3(cache);

	r3 = FUNC6(cache);
	if (r3)
		FUNC0("%s: could not write hints", FUNC1(cache));

	/*
	 * If writing the above metadata failed, we still commit, but don't
	 * set the clean shutdown flag.  This will effectively force every
	 * dirty bit to be set on reload.
	 */
	r4 = FUNC2(cache, !r1 && !r2 && !r3);
	if (r4)
		FUNC0("%s: could not write cache metadata", FUNC1(cache));

	return !r1 && !r2 && !r3 && !r4;
}