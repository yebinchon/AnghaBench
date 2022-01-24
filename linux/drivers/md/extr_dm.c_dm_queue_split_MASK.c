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
struct mapped_device {TYPE_2__* queue; } ;
struct dm_target {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  bio_split; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 unsigned int FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (struct bio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_target*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sector_t ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mapped_device *md, struct dm_target *ti, struct bio **bio)
{
	unsigned len, sector_count;

	sector_count = FUNC1(*bio);
	len = FUNC5(sector_t, FUNC4((*bio)->bi_iter.bi_sector, ti), sector_count);

	if (sector_count > len) {
		struct bio *split = FUNC2(*bio, len, GFP_NOIO, &md->queue->bio_split);

		FUNC0(split, *bio);
		FUNC6(md->queue, split, (*bio)->bi_iter.bi_sector);
		FUNC3(*bio);
		*bio = split;
	}
}