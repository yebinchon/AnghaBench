#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stripe_head {int disks; scalar_t__ qd_idx; int pd_idx; int /*<<< orphan*/  state; TYPE_2__* dev; scalar_t__ sector; int /*<<< orphan*/  count; struct r5conf* raid_conf; } ;
struct r5conf {scalar_t__ max_degraded; scalar_t__ max_nr_stripes; TYPE_3__* mddev; TYPE_1__* disks; } ;
struct md_rdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  read_errors; int /*<<< orphan*/  bdev; int /*<<< orphan*/  corrected_errors; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
struct bio {scalar_t__ bi_status; struct stripe_head* bi_private; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_8__ {scalar_t__ degraded; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; struct bio req; } ;
struct TYPE_6__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 scalar_t__ BLK_STS_PROTECTION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_OrigPageUPTDODATE ; 
 int /*<<< orphan*/  R5_ReWrite ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_ReadNoMerge ; 
 int /*<<< orphan*/  R5_ReadRepl ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_SECTORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long long,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,unsigned long long,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct md_rdev*,TYPE_3__*) ; 
 scalar_t__ FUNC16 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct r5conf*,struct stripe_head*) ; 

__attribute__((used)) static void FUNC20(struct bio * bi)
{
	struct stripe_head *sh = bi->bi_private;
	struct r5conf *conf = sh->raid_conf;
	int disks = sh->disks, i;
	char b[BDEVNAME_SIZE];
	struct md_rdev *rdev = NULL;
	sector_t s;

	for (i=0 ; i<disks; i++)
		if (bi == &sh->dev[i].req)
			break;

	FUNC10("end_read_request %llu/%d, count: %d, error %d.\n",
		(unsigned long long)sh->sector, i, FUNC3(&sh->count),
		bi->bi_status);
	if (i == disks) {
		FUNC6(bi);
		FUNC0();
		return;
	}
	if (FUNC18(R5_ReadRepl, &sh->dev[i].flags))
		/* If replacement finished while this request was outstanding,
		 * 'replacement' might be NULL already.
		 * In that case it moved down to 'rdev'.
		 * rdev is not removed until all requests are finished.
		 */
		rdev = conf->disks[i].replacement;
	if (!rdev)
		rdev = conf->disks[i].rdev;

	if (FUNC19(conf, sh))
		s = sh->sector + rdev->new_data_offset;
	else
		s = sh->sector + rdev->data_offset;
	if (!bi->bi_status) {
		FUNC17(R5_UPTODATE, &sh->dev[i].flags);
		if (FUNC18(R5_ReadError, &sh->dev[i].flags)) {
			/* Note that this cannot happen on a
			 * replacement device.  We just fail those on
			 * any error
			 */
			FUNC11(
				"md/raid:%s: read error corrected (%lu sectors at %llu on %s)\n",
				FUNC9(conf->mddev), STRIPE_SECTORS,
				(unsigned long long)s,
				FUNC5(rdev->bdev, b));
			FUNC1(STRIPE_SECTORS, &rdev->corrected_errors);
			FUNC7(R5_ReadError, &sh->dev[i].flags);
			FUNC7(R5_ReWrite, &sh->dev[i].flags);
		} else if (FUNC18(R5_ReadNoMerge, &sh->dev[i].flags))
			FUNC7(R5_ReadNoMerge, &sh->dev[i].flags);

		if (FUNC18(R5_InJournal, &sh->dev[i].flags))
			/*
			 * end read for a page in journal, this
			 * must be preparing for prexor in rmw
			 */
			FUNC17(R5_OrigPageUPTDODATE, &sh->dev[i].flags);

		if (FUNC3(&rdev->read_errors))
			FUNC4(&rdev->read_errors, 0);
	} else {
		const char *bdn = FUNC5(rdev->bdev, b);
		int retry = 0;
		int set_bad = 0;

		FUNC7(R5_UPTODATE, &sh->dev[i].flags);
		if (!(bi->bi_status == BLK_STS_PROTECTION))
			FUNC2(&rdev->read_errors);
		if (FUNC18(R5_ReadRepl, &sh->dev[i].flags))
			FUNC13(
				"md/raid:%s: read error on replacement device (sector %llu on %s).\n",
				FUNC9(conf->mddev),
				(unsigned long long)s,
				bdn);
		else if (conf->mddev->degraded >= conf->max_degraded) {
			set_bad = 1;
			FUNC13(
				"md/raid:%s: read error not correctable (sector %llu on %s).\n",
				FUNC9(conf->mddev),
				(unsigned long long)s,
				bdn);
		} else if (FUNC18(R5_ReWrite, &sh->dev[i].flags)) {
			/* Oh, no!!! */
			set_bad = 1;
			FUNC13(
				"md/raid:%s: read error NOT corrected!! (sector %llu on %s).\n",
				FUNC9(conf->mddev),
				(unsigned long long)s,
				bdn);
		} else if (FUNC3(&rdev->read_errors)
			 > conf->max_nr_stripes) {
			if (!FUNC18(Faulty, &rdev->flags)) {
				FUNC12("md/raid:%s: %d read_errors > %d stripes\n",
				    FUNC9(conf->mddev),
				    FUNC3(&rdev->read_errors),
				    conf->max_nr_stripes);
				FUNC12("md/raid:%s: Too many read errors, failing device %s.\n",
				    FUNC9(conf->mddev), bdn);
			}
		} else
			retry = 1;
		if (set_bad && FUNC18(In_sync, &rdev->flags)
		    && !FUNC18(R5_ReadNoMerge, &sh->dev[i].flags))
			retry = 1;
		if (retry)
			if (sh->qd_idx >= 0 && sh->pd_idx == i)
				FUNC17(R5_ReadError, &sh->dev[i].flags);
			else if (FUNC18(R5_ReadNoMerge, &sh->dev[i].flags)) {
				FUNC17(R5_ReadError, &sh->dev[i].flags);
				FUNC7(R5_ReadNoMerge, &sh->dev[i].flags);
			} else
				FUNC17(R5_ReadNoMerge, &sh->dev[i].flags);
		else {
			FUNC7(R5_ReadError, &sh->dev[i].flags);
			FUNC7(R5_ReWrite, &sh->dev[i].flags);
			if (!(set_bad
			      && FUNC18(In_sync, &rdev->flags)
			      && FUNC16(
				      rdev, sh->sector, STRIPE_SECTORS, 0)))
				FUNC8(conf->mddev, rdev);
		}
	}
	FUNC15(rdev, conf->mddev);
	FUNC6(bi);
	FUNC7(R5_LOCKED, &sh->dev[i].flags);
	FUNC17(STRIPE_HANDLE, &sh->state);
	FUNC14(sh);
}