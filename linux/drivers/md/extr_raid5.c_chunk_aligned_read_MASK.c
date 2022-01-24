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
struct r5conf {int /*<<< orphan*/  bio_split; } ;
struct mddev {unsigned int chunk_sectors; struct r5conf* private; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 unsigned int FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (struct bio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct bio*) ; 

__attribute__((used)) static struct bio *FUNC5(struct mddev *mddev, struct bio *raid_bio)
{
	struct bio *split;
	sector_t sector = raid_bio->bi_iter.bi_sector;
	unsigned chunk_sects = mddev->chunk_sectors;
	unsigned sectors = chunk_sects - (sector & (chunk_sects-1));

	if (sectors < FUNC1(raid_bio)) {
		struct r5conf *conf = mddev->private;
		split = FUNC2(raid_bio, sectors, GFP_NOIO, &conf->bio_split);
		FUNC0(split, raid_bio);
		FUNC3(raid_bio);
		raid_bio = split;
	}

	if (!FUNC4(mddev, raid_bio))
		return raid_bio;

	return NULL;
}