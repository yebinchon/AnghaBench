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
struct linear_c {TYPE_1__* dev; } ;
struct dm_target {struct linear_c* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_ZONE_RESET ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti, struct bio *bio)
{
	struct linear_c *lc = ti->private;

	FUNC2(bio, lc->dev->bdev);
	if (FUNC1(bio) || FUNC0(bio) == REQ_OP_ZONE_RESET)
		bio->bi_iter.bi_sector =
			FUNC3(ti, bio->bi_iter.bi_sector);
}