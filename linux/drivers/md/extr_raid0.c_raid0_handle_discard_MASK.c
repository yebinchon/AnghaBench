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
struct strip_zone {scalar_t__ zone_end; unsigned int nb_dev; scalar_t__ dev_start; } ;
struct r0conf {struct strip_zone* strip_zone; struct md_rdev** devlist; } ;
struct mddev {unsigned int chunk_sectors; scalar_t__ gendisk; int /*<<< orphan*/  bio_set; struct r0conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; scalar_t__ data_offset; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 struct bio* FUNC6 (struct bio*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct strip_zone* FUNC8 (struct r0conf*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct mddev *mddev, struct bio *bio)
{
	struct r0conf *conf = mddev->private;
	struct strip_zone *zone;
	sector_t start = bio->bi_iter.bi_sector;
	sector_t end;
	unsigned int stripe_size;
	sector_t first_stripe_index, last_stripe_index;
	sector_t start_disk_offset;
	unsigned int start_disk_index;
	sector_t end_disk_offset;
	unsigned int end_disk_index;
	unsigned int disk;

	zone = FUNC8(conf, &start);

	if (FUNC4(bio) > zone->zone_end) {
		struct bio *split = FUNC6(bio,
			zone->zone_end - bio->bi_iter.bi_sector, GFP_NOIO,
			&mddev->bio_set);
		FUNC2(split, bio);
		FUNC9(bio);
		bio = split;
		end = zone->zone_end;
	} else
		end = FUNC4(bio);

	if (zone != conf->strip_zone)
		end = end - zone[-1].zone_end;

	/* Now start and end is the offset in zone */
	stripe_size = zone->nb_dev * mddev->chunk_sectors;

	first_stripe_index = start;
	FUNC10(first_stripe_index, stripe_size);
	last_stripe_index = end;
	FUNC10(last_stripe_index, stripe_size);

	start_disk_index = (int)(start - first_stripe_index * stripe_size) /
		mddev->chunk_sectors;
	start_disk_offset = ((int)(start - first_stripe_index * stripe_size) %
		mddev->chunk_sectors) +
		first_stripe_index * mddev->chunk_sectors;
	end_disk_index = (int)(end - last_stripe_index * stripe_size) /
		mddev->chunk_sectors;
	end_disk_offset = ((int)(end - last_stripe_index * stripe_size) %
		mddev->chunk_sectors) +
		last_stripe_index * mddev->chunk_sectors;

	for (disk = 0; disk < zone->nb_dev; disk++) {
		sector_t dev_start, dev_end;
		struct bio *discard_bio = NULL;
		struct md_rdev *rdev;

		if (disk < start_disk_index)
			dev_start = (first_stripe_index + 1) *
				mddev->chunk_sectors;
		else if (disk > start_disk_index)
			dev_start = first_stripe_index * mddev->chunk_sectors;
		else
			dev_start = start_disk_offset;

		if (disk < end_disk_index)
			dev_end = (last_stripe_index + 1) * mddev->chunk_sectors;
		else if (disk > end_disk_index)
			dev_end = last_stripe_index * mddev->chunk_sectors;
		else
			dev_end = end_disk_offset;

		if (dev_end <= dev_start)
			continue;

		rdev = conf->devlist[(zone - conf->strip_zone) *
			conf->strip_zone[0].nb_dev + disk];
		if (FUNC0(rdev->bdev,
			dev_start + zone->dev_start + rdev->data_offset,
			dev_end - dev_start, GFP_NOIO, 0, &discard_bio) ||
		    !discard_bio)
			continue;
		FUNC2(discard_bio, bio);
		FUNC3(discard_bio, bio);
		if (mddev->gendisk)
			FUNC11(FUNC1(rdev->bdev),
				discard_bio, FUNC7(mddev->gendisk),
				bio->bi_iter.bi_sector);
		FUNC9(discard_bio);
	}
	FUNC5(bio);
}