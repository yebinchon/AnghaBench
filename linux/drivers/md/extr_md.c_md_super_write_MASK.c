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
struct page {int dummy; } ;
struct mddev {int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  flags; } ;
struct md_rdev {int /*<<< orphan*/  flags; scalar_t__ bdev; scalar_t__ meta_bdev; int /*<<< orphan*/  nr_pending; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; int /*<<< orphan*/  bi_end_io; struct md_rdev* bi_private; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  LastDev ; 
 int MD_FAILFAST ; 
 int /*<<< orphan*/  MD_FAILFAST_SUPPORTED ; 
 int REQ_FUA ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,scalar_t__) ; 
 struct bio* FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  super_written ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct mddev *mddev, struct md_rdev *rdev,
		   sector_t sector, int size, struct page *page)
{
	/* write first size bytes of page to sector of rdev
	 * Increment mddev->pending_writes before returning
	 * and decrement it on completion, waking up sb_wait
	 * if zero is reached.
	 * If an error occurred, call md_error
	 */
	struct bio *bio;
	int ff = 0;

	if (!page)
		return;

	if (FUNC5(Faulty, &rdev->flags))
		return;

	bio = FUNC3(mddev);

	FUNC0(&rdev->nr_pending);

	FUNC2(bio, rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev);
	bio->bi_iter.bi_sector = sector;
	FUNC1(bio, page, size, 0);
	bio->bi_private = rdev;
	bio->bi_end_io = super_written;

	if (FUNC5(MD_FAILFAST_SUPPORTED, &mddev->flags) &&
	    FUNC5(FailFast, &rdev->flags) &&
	    !FUNC5(LastDev, &rdev->flags))
		ff = MD_FAILFAST;
	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC | REQ_PREFLUSH | REQ_FUA | ff;

	FUNC0(&mddev->pending_writes);
	FUNC4(bio);
}