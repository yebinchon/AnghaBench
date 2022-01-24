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
struct raid_set {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ MaxSector ; 
 scalar_t__ FUNC0 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct raid_set*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct raid_set *rs, sector_t dev_sectors)
{
	if (!dev_sectors)
		/* New raid set or 'sync' flag provided */
		FUNC1(rs, 0);
	else if (dev_sectors == MaxSector)
		/* Prevent recovery */
		FUNC1(rs, MaxSector);
	else if (FUNC0(rs) < dev_sectors)
		/* Grown raid set */
		FUNC1(rs, FUNC0(rs));
	else
		FUNC1(rs, MaxSector);
}