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
struct stripe_head {int batch_head; int disks; scalar_t__ state; int /*<<< orphan*/  cpu; scalar_t__ overwrite_disks; scalar_t__ sector; struct r5dev* dev; scalar_t__ generation; int /*<<< orphan*/  count; struct r5conf* raid_conf; } ;
struct r5dev {int /*<<< orphan*/  sector; scalar_t__ flags; scalar_t__ written; scalar_t__ towrite; scalar_t__ read; scalar_t__ toread; } ;
struct r5conf {int previous_raid_disks; int raid_disks; int /*<<< orphan*/  gen_lock; scalar_t__ generation; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  STRIPE_BATCH_READY ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r5conf*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct r5conf*,int,struct stripe_head*) ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC14(struct stripe_head *sh, sector_t sector, int previous)
{
	struct r5conf *conf = sh->raid_conf;
	int i, seq;

	FUNC0(FUNC2(&sh->count) != 0);
	FUNC0(FUNC13(STRIPE_HANDLE, &sh->state));
	FUNC0(FUNC11(sh));
	FUNC0(sh->batch_head);

	FUNC4("init_stripe called, stripe %llu\n",
		(unsigned long long)sector);
retry:
	seq = FUNC7(&conf->gen_lock);
	sh->generation = conf->generation - previous;
	sh->disks = previous ? conf->previous_raid_disks : conf->raid_disks;
	sh->sector = sector;
	FUNC12(sector, conf, previous, sh);
	sh->state = 0;

	for (i = sh->disks; i--; ) {
		struct r5dev *dev = &sh->dev[i];

		if (dev->toread || dev->read || dev->towrite || dev->written ||
		    FUNC13(R5_LOCKED, &dev->flags)) {
			FUNC5("sector=%llx i=%d %p %p %p %p %d\n",
			       (unsigned long long)sh->sector, i, dev->toread,
			       dev->read, dev->towrite, dev->written,
			       FUNC13(R5_LOCKED, &dev->flags));
			FUNC1(1);
		}
		dev->flags = 0;
		dev->sector = FUNC6(sh, i, previous);
	}
	if (FUNC8(&conf->gen_lock, seq))
		goto retry;
	sh->overwrite_disks = 0;
	FUNC3(conf, sh);
	sh->cpu = FUNC10();
	FUNC9(STRIPE_BATCH_READY, &sh->state);
}