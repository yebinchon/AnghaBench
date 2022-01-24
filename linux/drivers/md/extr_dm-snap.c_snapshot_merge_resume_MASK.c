#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_target {int /*<<< orphan*/  max_io_len; struct dm_snapshot* private; } ;
struct dm_snapshot {TYPE_1__* origin; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snapshot*) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti)
{
	struct dm_snapshot *s = ti->private;

	/*
	 * Handover exceptions from existing snapshot.
	 */
	FUNC1(ti);

	/*
	 * snapshot-merge acts as an origin, so set ti->max_io_len
	 */
	ti->max_io_len = FUNC0(s->origin->bdev);

	FUNC2(s);
}