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
struct r1conf {int raid_disks; TYPE_2__* mirrors; } ;
struct r1bio {int read_disk; int /*<<< orphan*/  remaining; struct bio** bios; int /*<<< orphan*/  state; } ;
struct mddev {int /*<<< orphan*/  recovery; struct r1conf* private; } ;
struct bio {int /*<<< orphan*/ * bi_end_io; int /*<<< orphan*/  bi_opf; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  MD_FAILFAST ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,struct r1bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * end_sync_read ; 
 int /*<<< orphan*/ * end_sync_write ; 
 int /*<<< orphan*/  FUNC5 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct r1bio*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct mddev *mddev, struct r1bio *r1_bio)
{
	struct r1conf *conf = mddev->private;
	int i;
	int disks = conf->raid_disks * 2;
	struct bio *wbio;

	if (!FUNC10(R1BIO_Uptodate, &r1_bio->state))
		/* ouch - failed to read all of that. */
		if (!FUNC5(r1_bio))
			return;

	if (FUNC10(MD_RECOVERY_REQUESTED, &mddev->recovery))
		FUNC8(r1_bio);

	/*
	 * schedule writes
	 */
	FUNC2(&r1_bio->remaining, 1);
	for (i = 0; i < disks ; i++) {
		wbio = r1_bio->bios[i];
		if (wbio->bi_end_io == NULL ||
		    (wbio->bi_end_io == end_sync_read &&
		     (i == r1_bio->read_disk ||
		      !FUNC10(MD_RECOVERY_SYNC, &mddev->recovery))))
			continue;
		if (FUNC10(Faulty, &conf->mirrors[i].rdev->flags)) {
			FUNC0(mddev, r1_bio);
			continue;
		}

		FUNC4(wbio, REQ_OP_WRITE, 0);
		if (FUNC10(FailFast, &conf->mirrors[i].rdev->flags))
			wbio->bi_opf |= MD_FAILFAST;

		wbio->bi_end_io = end_sync_write;
		FUNC1(&r1_bio->remaining);
		FUNC7(conf->mirrors[i].rdev->bdev, FUNC3(wbio));

		FUNC6(wbio);
	}

	FUNC9(r1_bio, 1);
}