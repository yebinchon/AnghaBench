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
struct dm_zone {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_zone*) ; 
 int FUNC3 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct dm_zone *zone)
{
	FUNC0(FUNC3(zone));
	FUNC0(!FUNC2(zone));

	FUNC1(DMZ_RECLAIM, &zone->flags);
	FUNC4();
	FUNC5(&zone->flags, DMZ_RECLAIM);
}