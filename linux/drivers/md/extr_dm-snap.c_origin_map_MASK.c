#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_target {struct dm_origin* private; } ;
struct dm_origin {unsigned int split_boundary; TYPE_2__* dev; } ;
struct TYPE_3__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int REQ_PREFLUSH ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 unsigned int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,unsigned int) ; 
 int FUNC4 (TYPE_2__*,struct bio*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, struct bio *bio)
{
	struct dm_origin *o = ti->private;
	unsigned available_sectors;

	FUNC2(bio, o->dev->bdev);

	if (FUNC5(bio->bi_opf & REQ_PREFLUSH))
		return DM_MAPIO_REMAPPED;

	if (FUNC0(bio) != WRITE)
		return DM_MAPIO_REMAPPED;

	available_sectors = o->split_boundary -
		((unsigned)bio->bi_iter.bi_sector & (o->split_boundary - 1));

	if (FUNC1(bio) > available_sectors)
		FUNC3(bio, available_sectors);

	/* Only tell snapshots if this is a write */
	return FUNC4(o->dev, bio, true);
}