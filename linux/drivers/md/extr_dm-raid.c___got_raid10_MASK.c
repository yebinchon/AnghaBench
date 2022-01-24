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
struct raid_type {int level; int algorithm; } ;

/* Variables and functions */
#define  ALGORITHM_RAID10_DEFAULT 131 
#define  ALGORITHM_RAID10_FAR 130 
#define  ALGORITHM_RAID10_NEAR 129 
#define  ALGORITHM_RAID10_OFFSET 128 
 int FUNC0 (int const) ; 
 int FUNC1 (int const) ; 
 int FUNC2 (int const) ; 

__attribute__((used)) static bool FUNC3(struct raid_type *rtp, const int layout)
{
	if (rtp->level == 10) {
		switch (rtp->algorithm) {
		case ALGORITHM_RAID10_DEFAULT:
		case ALGORITHM_RAID10_NEAR:
			return FUNC1(layout);
		case ALGORITHM_RAID10_OFFSET:
			return FUNC2(layout);
		case ALGORITHM_RAID10_FAR:
			return FUNC0(layout);
		default:
			break;
		}
	}

	return false;
}