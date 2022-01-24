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
struct dmz_metadata {int dummy; } ;
struct dm_zone {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_RECLAIM ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	FUNC2(zmd);
	FUNC3(zmd);
	FUNC4(&zone->flags, DMZ_RECLAIM, TASK_UNINTERRUPTIBLE, HZ);
	FUNC1(zmd);
	FUNC0(zmd);
}