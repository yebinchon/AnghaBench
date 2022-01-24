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
struct stripe_head {int disks; int qd_idx; int pd_idx; TYPE_2__* dev; int /*<<< orphan*/  sector; } ;
struct r5l_recovery_ctx {int /*<<< orphan*/  data_parity_stripes; } ;
struct r5conf {TYPE_1__* disks; } ;
struct md_rdev {int /*<<< orphan*/  mddev; int /*<<< orphan*/  nr_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  page; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  replacement; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_head*) ; 
 struct md_rdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct r5conf *conf,
			       struct stripe_head *sh,
			       struct r5l_recovery_ctx *ctx)
{
	struct md_rdev *rdev, *rrdev;
	int disk_index;
	int data_count = 0;

	for (disk_index = 0; disk_index < sh->disks; disk_index++) {
		if (!FUNC7(R5_Wantwrite, &sh->dev[disk_index].flags))
			continue;
		if (disk_index == sh->qd_idx || disk_index == sh->pd_idx)
			continue;
		data_count++;
	}

	/*
	 * stripes that only have parity must have been flushed
	 * before the crash that we are now recovering from, so
	 * there is nothing more to recovery.
	 */
	if (data_count == 0)
		goto out;

	for (disk_index = 0; disk_index < sh->disks; disk_index++) {
		if (!FUNC7(R5_Wantwrite, &sh->dev[disk_index].flags))
			continue;

		/* in case device is broken */
		FUNC3();
		rdev = FUNC2(conf->disks[disk_index].rdev);
		if (rdev) {
			FUNC0(&rdev->nr_pending);
			FUNC4();
			FUNC6(rdev, sh->sector, PAGE_SIZE,
				     sh->dev[disk_index].page, REQ_OP_WRITE, 0,
				     false);
			FUNC5(rdev, rdev->mddev);
			FUNC3();
		}
		rrdev = FUNC2(conf->disks[disk_index].replacement);
		if (rrdev) {
			FUNC0(&rrdev->nr_pending);
			FUNC4();
			FUNC6(rrdev, sh->sector, PAGE_SIZE,
				     sh->dev[disk_index].page, REQ_OP_WRITE, 0,
				     false);
			FUNC5(rrdev, rrdev->mddev);
			FUNC3();
		}
		FUNC4();
	}
	ctx->data_parity_stripes++;
out:
	FUNC1(sh);
}