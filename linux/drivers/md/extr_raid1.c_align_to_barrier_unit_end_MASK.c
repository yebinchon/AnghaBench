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
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER_UNIT_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sector_t FUNC2(sector_t start_sector,
					  sector_t sectors)
{
	sector_t len;

	FUNC0(sectors == 0);
	/*
	 * len is the number of sectors from start_sector to end of the
	 * barrier unit which start_sector belongs to.
	 */
	len = FUNC1(start_sector + 1, BARRIER_UNIT_SECTOR_SIZE) -
	      start_sector;

	if (len > sectors)
		len = sectors;

	return len;
}