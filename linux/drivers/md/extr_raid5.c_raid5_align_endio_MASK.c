#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r5conf {int /*<<< orphan*/  wait_for_quiescent; int /*<<< orphan*/  active_aligned_reads; int /*<<< orphan*/  mddev; } ;
struct mddev {struct r5conf* private; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {int /*<<< orphan*/ * bi_next; int /*<<< orphan*/  bi_status; struct bio* bi_private; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct r5conf*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bio *bi)
{
	struct bio* raid_bi  = bi->bi_private;
	struct mddev *mddev;
	struct r5conf *conf;
	struct md_rdev *rdev;
	blk_status_t error = bi->bi_status;

	FUNC3(bi);

	rdev = (void*)raid_bi->bi_next;
	raid_bi->bi_next = NULL;
	mddev = rdev->mddev;
	conf = mddev->private;

	FUNC5(rdev, conf->mddev);

	if (!error) {
		FUNC2(raid_bi);
		if (FUNC1(&conf->active_aligned_reads))
			FUNC6(&conf->wait_for_quiescent);
		return;
	}

	FUNC4("raid5_align_endio : io error...handing IO for a retry\n");

	FUNC0(raid_bi, conf);
}