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
struct raid_set {int /*<<< orphan*/  md; int /*<<< orphan*/  runtime_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RT_FLAG_RS_BITMAP_LOADED ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct raid_set *rs)
{
	int r = 0;

	/* Try loading the bitmap unless "raid0", which does not have one */
	if (!FUNC2(rs) &&
	    !FUNC3(RT_FLAG_RS_BITMAP_LOADED, &rs->runtime_flags)) {
		r = FUNC1(&rs->md);
		if (r)
			FUNC0("Failed to load bitmap");
	}

	return r;
}