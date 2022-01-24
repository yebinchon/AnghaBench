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
struct r1conf {int raid_disks; TYPE_1__* mirrors; int /*<<< orphan*/  recovery_disabled; } ;
struct r1bio {size_t read_disk; int sector; int sectors; int /*<<< orphan*/  state; struct bio** bios; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/  recovery_disabled; struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  corrected_errors; int /*<<< orphan*/  flags; } ;
struct bio {scalar_t__ bi_status; int /*<<< orphan*/ * bi_end_io; } ;
typedef  int sector_t ;
struct TYPE_4__ {struct page** pages; } ;
struct TYPE_3__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,char*) ; 
 int /*<<< orphan*/ * end_sync_read ; 
 int /*<<< orphan*/ * end_sync_write ; 
 TYPE_2__* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct r1bio*) ; 
 scalar_t__ FUNC8 (struct md_rdev*,int,int,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (struct md_rdev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct md_rdev*,int,int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct r1bio *r1_bio)
{
	/* Try some synchronous reads of other devices to get
	 * good data, much like with normal read errors.  Only
	 * read into the pages we already have so we don't
	 * need to re-issue the read request.
	 * We don't need to freeze the array, because being in an
	 * active sync request, there is no normal IO, and
	 * no overlapping syncs.
	 * We don't need to check is_badblock() again as we
	 * made sure that anything with a bad block in range
	 * will have bi_end_io clear.
	 */
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;
	struct bio *bio = r1_bio->bios[r1_bio->read_disk];
	struct page **pages = FUNC2(bio)->pages;
	sector_t sect = r1_bio->sector;
	int sectors = r1_bio->sectors;
	int idx = 0;
	struct md_rdev *rdev;

	rdev = conf->mirrors[r1_bio->read_disk].rdev;
	if (FUNC13(FailFast, &rdev->flags)) {
		/* Don't try recovering from here - just fail it
		 * ... unless it is the last working device of course */
		FUNC4(mddev, rdev);
		if (FUNC13(Faulty, &rdev->flags))
			/* Don't try to read from here, but make sure
			 * put_buf does it's thing
			 */
			bio->bi_end_io = end_sync_write;
	}

	while(sectors) {
		int s = sectors;
		int d = r1_bio->read_disk;
		int success = 0;
		int start;

		if (s > (PAGE_SIZE>>9))
			s = PAGE_SIZE >> 9;
		do {
			if (r1_bio->bios[d]->bi_end_io == end_sync_read) {
				/* No rcu protection needed here devices
				 * can only be removed when no resync is
				 * active, and resync is currently active
				 */
				rdev = conf->mirrors[d].rdev;
				if (FUNC12(rdev, sect, s<<9,
						 pages[idx],
						 REQ_OP_READ, 0, false)) {
					success = 1;
					break;
				}
			}
			d++;
			if (d == conf->raid_disks * 2)
				d = 0;
		} while (!success && d != r1_bio->read_disk);

		if (!success) {
			char b[BDEVNAME_SIZE];
			int abort = 0;
			/* Cannot read from anywhere, this block is lost.
			 * Record a bad block on each device.  If that doesn't
			 * work just disable and interrupt the recovery.
			 * Don't fail devices as that won't really help.
			 */
			FUNC6("md/raid1:%s: %s: unrecoverable I/O read error for block %llu\n",
					    FUNC5(mddev), FUNC1(bio, b),
					    (unsigned long long)r1_bio->sector);
			for (d = 0; d < conf->raid_disks * 2; d++) {
				rdev = conf->mirrors[d].rdev;
				if (!rdev || FUNC13(Faulty, &rdev->flags))
					continue;
				if (!FUNC10(rdev, sect, s, 0))
					abort = 1;
			}
			if (abort) {
				conf->recovery_disabled =
					mddev->recovery_disabled;
				FUNC11(MD_RECOVERY_INTR, &mddev->recovery);
				FUNC3(mddev, r1_bio->sectors, 0);
				FUNC7(r1_bio);
				return 0;
			}
			/* Try next page */
			sectors -= s;
			sect += s;
			idx++;
			continue;
		}

		start = d;
		/* write it back and re-read */
		while (d != r1_bio->read_disk) {
			if (d == 0)
				d = conf->raid_disks * 2;
			d--;
			if (r1_bio->bios[d]->bi_end_io != end_sync_read)
				continue;
			rdev = conf->mirrors[d].rdev;
			if (FUNC8(rdev, sect, s,
					    pages[idx],
					    WRITE) == 0) {
				r1_bio->bios[d]->bi_end_io = NULL;
				FUNC9(rdev, mddev);
			}
		}
		d = start;
		while (d != r1_bio->read_disk) {
			if (d == 0)
				d = conf->raid_disks * 2;
			d--;
			if (r1_bio->bios[d]->bi_end_io != end_sync_read)
				continue;
			rdev = conf->mirrors[d].rdev;
			if (FUNC8(rdev, sect, s,
					    pages[idx],
					    READ) != 0)
				FUNC0(s, &rdev->corrected_errors);
		}
		sectors -= s;
		sect += s;
		idx ++;
	}
	FUNC11(R1BIO_Uptodate, &r1_bio->state);
	bio->bi_status = 0;
	return 1;
}