#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct r1conf {TYPE_1__* mirrors; } ;
struct r1bio {int sectors; int sector; int /*<<< orphan*/  master_bio; int /*<<< orphan*/  behind_master_bio; int /*<<< orphan*/  state; struct mddev* mddev; } ;
struct mddev {int /*<<< orphan*/  bio_set; struct r1conf* private; } ;
struct TYPE_5__ {int shift; } ;
struct md_rdev {int /*<<< orphan*/  bdev; scalar_t__ data_offset; TYPE_2__ badblocks; } ;
struct TYPE_6__ {int bi_sector; int bi_size; } ;
struct bio {TYPE_3__ bi_iter; } ;
typedef  int sector_t ;
struct TYPE_4__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  R1BIO_BehindIO ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int,int) ; 
 scalar_t__ FUNC6 (struct md_rdev*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (struct bio*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct r1bio *r1_bio, int i)
{
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;
	struct md_rdev *rdev = conf->mirrors[i].rdev;

	/* bio has the data to be written to device 'i' where
	 * we just recently had a write error.
	 * We repeatedly clone the bio and trim down to one block,
	 * then try the write.  Where the write fails we record
	 * a bad block.
	 * It is conceivable that the bio doesn't exactly align with
	 * blocks.  We must handle this somehow.
	 *
	 * We currently own a reference on the rdev.
	 */

	int block_sectors;
	sector_t sector;
	int sectors;
	int sect_to_write = r1_bio->sectors;
	int ok = 1;

	if (rdev->badblocks.shift < 0)
		return 0;

	block_sectors = FUNC7(1 << rdev->badblocks.shift,
				FUNC0(rdev->bdev) >> 9);
	sector = r1_bio->sector;
	sectors = ((sector + block_sectors)
		   & ~(sector_t)(block_sectors - 1))
		- sector;

	while (sect_to_write) {
		struct bio *wbio;
		if (sectors > sect_to_write)
			sectors = sect_to_write;
		/* Write at 'sector' for 'sectors'*/

		if (FUNC9(R1BIO_BehindIO, &r1_bio->state)) {
			wbio = FUNC1(r1_bio->behind_master_bio,
					      GFP_NOIO,
					      &mddev->bio_set);
		} else {
			wbio = FUNC1(r1_bio->master_bio, GFP_NOIO,
					      &mddev->bio_set);
		}

		FUNC4(wbio, REQ_OP_WRITE, 0);
		wbio->bi_iter.bi_sector = r1_bio->sector;
		wbio->bi_iter.bi_size = r1_bio->sectors << 9;

		FUNC5(wbio, sector - r1_bio->sector, sectors);
		wbio->bi_iter.bi_sector += rdev->data_offset;
		FUNC3(wbio, rdev->bdev);

		if (FUNC8(wbio) < 0)
			/* failure! */
			ok = FUNC6(rdev, sector,
						sectors, 0)
				&& ok;

		FUNC2(wbio);
		sect_to_write -= sectors;
		sector += sectors;
		sectors = block_sectors;
	}
	return ok;
}