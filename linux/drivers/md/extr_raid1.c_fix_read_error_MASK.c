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
struct r1conf {int raid_disks; int /*<<< orphan*/  tmppage; TYPE_1__* mirrors; struct mddev* mddev; } ;
struct mddev {int dummy; } ;
struct md_rdev {scalar_t__ recovery_offset; scalar_t__ data_offset; int /*<<< orphan*/  bdev; int /*<<< orphan*/  corrected_errors; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,unsigned long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC8 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC12 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct r1conf *conf, int read_disk,
			   sector_t sect, int sectors)
{
	struct mddev *mddev = conf->mddev;
	while(sectors) {
		int s = sectors;
		int d = read_disk;
		int success = 0;
		int start;
		struct md_rdev *rdev;

		if (s > (PAGE_SIZE>>9))
			s = PAGE_SIZE >> 9;

		do {
			sector_t first_bad;
			int bad_sectors;

			FUNC9();
			rdev = FUNC8(conf->mirrors[d].rdev);
			if (rdev &&
			    (FUNC14(In_sync, &rdev->flags) ||
			     (!FUNC14(Faulty, &rdev->flags) &&
			      rdev->recovery_offset >= sect + s)) &&
			    FUNC3(rdev, sect, s,
					&first_bad, &bad_sectors) == 0) {
				FUNC1(&rdev->nr_pending);
				FUNC10();
				if (FUNC13(rdev, sect, s<<9,
					 conf->tmppage, REQ_OP_READ, 0, false))
					success = 1;
				FUNC11(rdev, mddev);
				if (success)
					break;
			} else
				FUNC10();
			d++;
			if (d == conf->raid_disks * 2)
				d = 0;
		} while (!success && d != read_disk);

		if (!success) {
			/* Cannot read from anywhere - mark it bad */
			struct md_rdev *rdev = conf->mirrors[read_disk].rdev;
			if (!FUNC12(rdev, sect, s, 0))
				FUNC4(mddev, rdev);
			break;
		}
		/* write it back and re-read */
		start = d;
		while (d != read_disk) {
			if (d==0)
				d = conf->raid_disks * 2;
			d--;
			FUNC9();
			rdev = FUNC8(conf->mirrors[d].rdev);
			if (rdev &&
			    !FUNC14(Faulty, &rdev->flags)) {
				FUNC1(&rdev->nr_pending);
				FUNC10();
				FUNC7(rdev, sect, s,
						conf->tmppage, WRITE);
				FUNC11(rdev, mddev);
			} else
				FUNC10();
		}
		d = start;
		while (d != read_disk) {
			char b[BDEVNAME_SIZE];
			if (d==0)
				d = conf->raid_disks * 2;
			d--;
			FUNC9();
			rdev = FUNC8(conf->mirrors[d].rdev);
			if (rdev &&
			    !FUNC14(Faulty, &rdev->flags)) {
				FUNC1(&rdev->nr_pending);
				FUNC10();
				if (FUNC7(rdev, sect, s,
						    conf->tmppage, READ)) {
					FUNC0(s, &rdev->corrected_errors);
					FUNC6("md/raid1:%s: read error corrected (%d sectors at %llu on %s)\n",
						FUNC5(mddev), s,
						(unsigned long long)(sect +
								     rdev->data_offset),
						FUNC2(rdev->bdev, b));
				}
				FUNC11(rdev, mddev);
			} else
				FUNC10();
		}
		sectors -= s;
		sect += s;
	}
}