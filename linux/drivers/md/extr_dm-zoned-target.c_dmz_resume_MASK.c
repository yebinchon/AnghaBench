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
struct dmz_target {int /*<<< orphan*/  reclaim; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  flush_wq; } ;
struct dm_target {struct dmz_target* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_FLUSH_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti)
{
	struct dmz_target *dmz = ti->private;

	FUNC1(dmz->flush_wq, &dmz->flush_work, DMZ_FLUSH_PERIOD);
	FUNC0(dmz->reclaim);
}