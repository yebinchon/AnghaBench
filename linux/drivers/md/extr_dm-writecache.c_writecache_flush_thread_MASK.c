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
struct dm_writecache {TYPE_2__* dev; int /*<<< orphan*/  flush_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_status; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_writecache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_writecache*) ; 
 scalar_t__ FUNC14 (struct dm_writecache*) ; 

__attribute__((used)) static int FUNC15(void *data)
{
	struct dm_writecache *wc = data;

	while (1) {
		struct bio *bio;

		FUNC10(wc);
		bio = FUNC2(&wc->flush_list);
		if (!bio) {
			FUNC8(TASK_INTERRUPTIBLE);
			FUNC11(wc);

			if (FUNC9(FUNC6())) {
				FUNC8(TASK_RUNNING);
				break;
			}

			FUNC7();
			continue;
		}

		if (FUNC3(bio) == REQ_OP_DISCARD) {
			FUNC12(wc, bio->bi_iter.bi_sector,
					   FUNC0(bio));
			FUNC11(wc);
			FUNC4(bio, wc->dev->bdev);
			FUNC5(bio);
		} else {
			FUNC13(wc);
			FUNC11(wc);
			if (FUNC14(wc))
				bio->bi_status = BLK_STS_IOERR;
			FUNC1(bio);
		}
	}

	return 0;
}