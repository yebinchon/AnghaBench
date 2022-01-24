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
struct mddev {TYPE_2__* pers; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  lock; struct bio* flush_bio; int /*<<< orphan*/  last_flush; int /*<<< orphan*/  sb_wait; } ;
struct TYPE_3__ {scalar_t__ bi_size; } ;
struct bio {int /*<<< orphan*/  bi_opf; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* make_request ) (struct mddev*,struct bio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  md_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  submit_flushes ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC10(struct mddev *mddev, struct bio *bio)
{
	ktime_t start = FUNC4();
	FUNC6(&mddev->lock);
	FUNC9(mddev->sb_wait,
			    !mddev->flush_bio ||
			    FUNC3(mddev->last_flush, start),
			    mddev->lock);
	if (!FUNC3(mddev->last_flush, start)) {
		FUNC1(mddev->flush_bio);
		mddev->flush_bio = bio;
		bio = NULL;
	}
	FUNC7(&mddev->lock);

	if (!bio) {
		FUNC0(&mddev->flush_work, submit_flushes);
		FUNC5(md_wq, &mddev->flush_work);
	} else {
		/* flush was performed for some other bio while we waited. */
		if (bio->bi_iter.bi_size == 0)
			/* an empty barrier - all done */
			FUNC2(bio);
		else {
			bio->bi_opf &= ~REQ_PREFLUSH;
			mddev->pers->make_request(mddev, bio);
		}
	}
}