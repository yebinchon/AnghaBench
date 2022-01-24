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
struct raid_set {int /*<<< orphan*/  raid_type; } ;

/* Variables and functions */
 unsigned long RAID0_VALID_FLAGS ; 
 unsigned long RAID10_VALID_FLAGS ; 
 unsigned long RAID1_VALID_FLAGS ; 
 unsigned long RAID45_VALID_FLAGS ; 
 unsigned long RAID6_VALID_FLAGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC5(struct raid_set *rs)
{
	if (FUNC0(rs->raid_type))
		return RAID0_VALID_FLAGS;
	else if (FUNC1(rs->raid_type))
		return RAID1_VALID_FLAGS;
	else if (FUNC2(rs->raid_type))
		return RAID10_VALID_FLAGS;
	else if (FUNC3(rs->raid_type))
		return RAID45_VALID_FLAGS;
	else if (FUNC4(rs->raid_type))
		return RAID6_VALID_FLAGS;

	return 0;
}