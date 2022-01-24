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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dm_integrity_c {int synchronous_mode; TYPE_1__ endio_wait; int /*<<< orphan*/  bitmap_flush_work; int /*<<< orphan*/  commit_wq; int /*<<< orphan*/  synchronous_bios; } ;
struct bio {scalar_t__ bi_status; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int FUNC3 (struct dm_integrity_c*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct dm_integrity_c *ic, struct bio *bio)
{
	int r = FUNC3(ic);
	if (FUNC8(r) && !bio->bi_status)
		bio->bi_status = FUNC4(r);
	if (FUNC8(ic->synchronous_mode) && FUNC2(bio) == REQ_OP_WRITE) {
		unsigned long flags;
		FUNC6(&ic->endio_wait.lock, flags);
		FUNC1(&ic->synchronous_bios, bio);
		FUNC5(ic->commit_wq, &ic->bitmap_flush_work, 0);
		FUNC7(&ic->endio_wait.lock, flags);
		return;
	}
	FUNC0(bio);
}