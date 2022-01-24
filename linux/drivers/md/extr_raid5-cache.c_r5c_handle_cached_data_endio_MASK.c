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
struct stripe_head {int disks; int /*<<< orphan*/  state; int /*<<< orphan*/  sector; TYPE_2__* dev; } ;
struct r5conf {TYPE_1__* mddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; scalar_t__ written; } ;
struct TYPE_3__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  STRIPE_DEGRADED ; 
 int /*<<< orphan*/  STRIPE_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct r5conf *conf,
				  struct stripe_head *sh, int disks)
{
	int i;

	for (i = sh->disks; i--; ) {
		if (sh->dev[i].written) {
			FUNC2(R5_UPTODATE, &sh->dev[i].flags);
			FUNC1(conf, &sh->dev[i]);
			FUNC0(conf->mddev->bitmap, sh->sector,
					   STRIPE_SECTORS,
					   !FUNC3(STRIPE_DEGRADED, &sh->state),
					   0);
		}
	}
}