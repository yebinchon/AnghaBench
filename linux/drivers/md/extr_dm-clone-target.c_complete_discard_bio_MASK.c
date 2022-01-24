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
struct clone {unsigned long region_shift; int /*<<< orphan*/  flags; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CLONE_DISCARD_PASSDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct clone*,struct bio*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct clone*,struct bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct clone *clone, struct bio *bio, bool success)
{
	unsigned long rs, re;

	/*
	 * If the destination device supports discards, remap and trim the
	 * discard bio and pass it down. Otherwise complete the bio
	 * immediately.
	 */
	if (FUNC4(DM_CLONE_DISCARD_PASSDOWN, &clone->flags) && success) {
		FUNC3(clone, bio);
		FUNC1(clone, bio, &rs, &re);
		FUNC5(bio, rs << clone->region_shift,
			 (re - rs) << clone->region_shift);
		FUNC2(bio);
	} else
		FUNC0(bio);
}