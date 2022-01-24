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
struct r10conf {int copies; int /*<<< orphan*/  tmppage; TYPE_2__* mirrors; } ;
struct r10bio {int sectors; size_t read_slot; TYPE_1__* devs; } ;
struct mddev {int /*<<< orphan*/  max_corr_read_errors; } ;
struct md_rdev {int /*<<< orphan*/  corrected_errors; int /*<<< orphan*/  bdev; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; int /*<<< orphan*/  read_errors; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {struct md_rdev* rdev; } ;
struct TYPE_3__ {int devnum; scalar_t__ addr; void* bio; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 void* IO_BLOCKED ; 
 int /*<<< orphan*/  In_sync ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct md_rdev*) ; 
 scalar_t__ FUNC5 (struct r10bio*,struct md_rdev*) ; 
 scalar_t__ FUNC6 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC11 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC12 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC16 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct r10conf *conf, struct mddev *mddev, struct r10bio *r10_bio)
{
	int sect = 0; /* Offset from r10_bio->sector */
	int sectors = r10_bio->sectors;
	struct md_rdev *rdev;
	int max_read_errors = FUNC2(&mddev->max_corr_read_errors);
	int d = r10_bio->devs[r10_bio->read_slot].devnum;

	/* still own a reference to this rdev, so it cannot
	 * have been cleared recently.
	 */
	rdev = conf->mirrors[d].rdev;

	if (FUNC18(Faulty, &rdev->flags))
		/* drive has already been failed, just ignore any
		   more fix_read_error() attempts */
		return;

	FUNC4(mddev, rdev);
	FUNC1(&rdev->read_errors);
	if (FUNC2(&rdev->read_errors) > max_read_errors) {
		char b[BDEVNAME_SIZE];
		FUNC3(rdev->bdev, b);

		FUNC10("md/raid10:%s: %s: Raid device exceeded read_error threshold [cur %d:max %d]\n",
			  FUNC8(mddev), b,
			  FUNC2(&rdev->read_errors), max_read_errors);
		FUNC10("md/raid10:%s: %s: Failing raid device\n",
			  FUNC8(mddev), b);
		FUNC7(mddev, rdev);
		r10_bio->devs[r10_bio->read_slot].bio = IO_BLOCKED;
		return;
	}

	while(sectors) {
		int s = sectors;
		int sl = r10_bio->read_slot;
		int success = 0;
		int start;

		if (s > (PAGE_SIZE>>9))
			s = PAGE_SIZE >> 9;

		FUNC13();
		do {
			sector_t first_bad;
			int bad_sectors;

			d = r10_bio->devs[sl].devnum;
			rdev = FUNC12(conf->mirrors[d].rdev);
			if (rdev &&
			    FUNC18(In_sync, &rdev->flags) &&
			    !FUNC18(Faulty, &rdev->flags) &&
			    FUNC6(rdev, r10_bio->devs[sl].addr + sect, s,
					&first_bad, &bad_sectors) == 0) {
				FUNC1(&rdev->nr_pending);
				FUNC14();
				success = FUNC17(rdev,
						       r10_bio->devs[sl].addr +
						       sect,
						       s<<9,
						       conf->tmppage,
						       REQ_OP_READ, 0, false);
				FUNC15(rdev, mddev);
				FUNC13();
				if (success)
					break;
			}
			sl++;
			if (sl == conf->copies)
				sl = 0;
		} while (!success && sl != r10_bio->read_slot);
		FUNC14();

		if (!success) {
			/* Cannot read from anywhere, just mark the block
			 * as bad on the first device to discourage future
			 * reads.
			 */
			int dn = r10_bio->devs[r10_bio->read_slot].devnum;
			rdev = conf->mirrors[dn].rdev;

			if (!FUNC16(
				    rdev,
				    r10_bio->devs[r10_bio->read_slot].addr
				    + sect,
				    s, 0)) {
				FUNC7(mddev, rdev);
				r10_bio->devs[r10_bio->read_slot].bio
					= IO_BLOCKED;
			}
			break;
		}

		start = sl;
		/* write it back and re-read */
		FUNC13();
		while (sl != r10_bio->read_slot) {
			char b[BDEVNAME_SIZE];

			if (sl==0)
				sl = conf->copies;
			sl--;
			d = r10_bio->devs[sl].devnum;
			rdev = FUNC12(conf->mirrors[d].rdev);
			if (!rdev ||
			    FUNC18(Faulty, &rdev->flags) ||
			    !FUNC18(In_sync, &rdev->flags))
				continue;

			FUNC1(&rdev->nr_pending);
			FUNC14();
			if (FUNC11(rdev,
					     r10_bio->devs[sl].addr +
					     sect,
					     s, conf->tmppage, WRITE)
			    == 0) {
				/* Well, this device is dead */
				FUNC10("md/raid10:%s: read correction write failed (%d sectors at %llu on %s)\n",
					  FUNC8(mddev), s,
					  (unsigned long long)(
						  sect +
						  FUNC5(r10_bio,
								     rdev)),
					  FUNC3(rdev->bdev, b));
				FUNC10("md/raid10:%s: %s: failing drive\n",
					  FUNC8(mddev),
					  FUNC3(rdev->bdev, b));
			}
			FUNC15(rdev, mddev);
			FUNC13();
		}
		sl = start;
		while (sl != r10_bio->read_slot) {
			char b[BDEVNAME_SIZE];

			if (sl==0)
				sl = conf->copies;
			sl--;
			d = r10_bio->devs[sl].devnum;
			rdev = FUNC12(conf->mirrors[d].rdev);
			if (!rdev ||
			    FUNC18(Faulty, &rdev->flags) ||
			    !FUNC18(In_sync, &rdev->flags))
				continue;

			FUNC1(&rdev->nr_pending);
			FUNC14();
			switch (FUNC11(rdev,
					     r10_bio->devs[sl].addr +
					     sect,
					     s, conf->tmppage,
						 READ)) {
			case 0:
				/* Well, this device is dead */
				FUNC10("md/raid10:%s: unable to read back corrected sectors (%d sectors at %llu on %s)\n",
				       FUNC8(mddev), s,
				       (unsigned long long)(
					       sect +
					       FUNC5(r10_bio, rdev)),
				       FUNC3(rdev->bdev, b));
				FUNC10("md/raid10:%s: %s: failing drive\n",
				       FUNC8(mddev),
				       FUNC3(rdev->bdev, b));
				break;
			case 1:
				FUNC9("md/raid10:%s: read error corrected (%d sectors at %llu on %s)\n",
				       FUNC8(mddev), s,
				       (unsigned long long)(
					       sect +
					       FUNC5(r10_bio, rdev)),
				       FUNC3(rdev->bdev, b));
				FUNC0(s, &rdev->corrected_errors);
			}

			FUNC15(rdev, mddev);
			FUNC13();
		}
		FUNC14();

		sectors -= s;
		sect += s;
	}
}