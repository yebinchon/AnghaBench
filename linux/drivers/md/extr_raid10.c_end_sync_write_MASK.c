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
struct r10conf {TYPE_1__* mirrors; } ;
struct r10bio {int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; TYPE_3__* devs; struct mddev* mddev; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {TYPE_2__* mddev; int /*<<< orphan*/  flags; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  recovery; } ;
struct TYPE_4__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  R10BIO_MadeGood ; 
 int /*<<< orphan*/  R10BIO_WriteError ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  FUNC0 (struct r10bio*) ; 
 int FUNC1 (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ; 
 struct r10bio* FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct bio *bio)
{
	struct r10bio *r10_bio = FUNC2(bio);
	struct mddev *mddev = r10_bio->mddev;
	struct r10conf *conf = mddev->private;
	int d;
	sector_t first_bad;
	int bad_sectors;
	int slot;
	int repl;
	struct md_rdev *rdev = NULL;

	d = FUNC1(conf, r10_bio, bio, &slot, &repl);
	if (repl)
		rdev = conf->mirrors[d].replacement;
	else
		rdev = conf->mirrors[d].rdev;

	if (bio->bi_status) {
		if (repl)
			FUNC4(mddev, rdev);
		else {
			FUNC6(WriteErrorSeen, &rdev->flags);
			if (!FUNC7(WantReplacement, &rdev->flags))
				FUNC6(MD_RECOVERY_NEEDED,
					&rdev->mddev->recovery);
			FUNC6(R10BIO_WriteError, &r10_bio->state);
		}
	} else if (FUNC3(rdev,
			     r10_bio->devs[slot].addr,
			     r10_bio->sectors,
			     &first_bad, &bad_sectors))
		FUNC6(R10BIO_MadeGood, &r10_bio->state);

	FUNC5(rdev, mddev);

	FUNC0(r10_bio);
}