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
struct r1conf {TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; int /*<<< orphan*/  sector; struct mddev* mddev; } ;
struct mddev {int /*<<< orphan*/  recovery; struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,struct r1bio*) ; 
 size_t FUNC1 (struct r1bio*,struct bio*) ; 
 struct r1bio* FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct r1bio*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bio *bio)
{
	int uptodate = !bio->bi_status;
	struct r1bio *r1_bio = FUNC2(bio);
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;
	sector_t first_bad;
	int bad_sectors;
	struct md_rdev *rdev = conf->mirrors[FUNC1(r1_bio, bio)].rdev;

	if (!uptodate) {
		FUNC0(mddev, r1_bio);
		FUNC5(WriteErrorSeen, &rdev->flags);
		if (!FUNC6(WantReplacement, &rdev->flags))
			FUNC5(MD_RECOVERY_NEEDED, &
				mddev->recovery);
		FUNC5(R1BIO_WriteError, &r1_bio->state);
	} else if (FUNC3(rdev, r1_bio->sector, r1_bio->sectors,
			       &first_bad, &bad_sectors) &&
		   !FUNC3(conf->mirrors[r1_bio->read_disk].rdev,
				r1_bio->sector,
				r1_bio->sectors,
				&first_bad, &bad_sectors)
		)
		FUNC5(R1BIO_MadeGood, &r1_bio->state);

	FUNC4(r1_bio, uptodate);
}