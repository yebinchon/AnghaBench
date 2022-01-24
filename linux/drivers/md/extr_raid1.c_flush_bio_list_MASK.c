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
struct r1conf {int /*<<< orphan*/  wait_barrier; TYPE_2__* mddev; } ;
struct md_rdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; } ;
struct bio {TYPE_1__* bi_disk; struct bio* bi_next; } ;
struct TYPE_4__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct r1conf *conf, struct bio *bio)
{
	/* flush any pending bitmap writes to disk before proceeding w/ I/O */
	FUNC6(conf->mddev->bitmap);
	FUNC9(&conf->wait_barrier);

	while (bio) { /* submit pending writes */
		struct bio *next = bio->bi_next;
		struct md_rdev *rdev = (void *)bio->bi_disk;
		bio->bi_next = NULL;
		FUNC3(bio, rdev->bdev);
		if (FUNC7(Faulty, &rdev->flags)) {
			FUNC1(bio);
		} else if (FUNC8((FUNC2(bio) == REQ_OP_DISCARD) &&
				    !FUNC4(bio->bi_disk->queue)))
			/* Just ignore it */
			FUNC0(bio);
		else
			FUNC5(bio);
		bio = next;
	}
}