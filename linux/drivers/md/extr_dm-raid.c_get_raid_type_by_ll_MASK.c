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
struct raid_type {int const level; int const algorithm; } ;

/* Variables and functions */
 int FUNC0 (struct raid_type*) ; 
 scalar_t__ FUNC1 (struct raid_type*,int const) ; 
 struct raid_type* raid_types ; 

__attribute__((used)) static struct raid_type *FUNC2(const int level, const int layout)
{
	struct raid_type *rtp = raid_types + FUNC0(raid_types);

	while (rtp-- > raid_types) {
		/* RAID10 special checks based on @layout flags/properties */
		if (rtp->level == level &&
		    (FUNC1(rtp, layout) || rtp->algorithm == layout))
			return rtp;
	}

	return NULL;
}