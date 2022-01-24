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
struct dm_region_hash {int flush_failure; int /*<<< orphan*/  region_lock; int /*<<< orphan*/  hash_lock; struct dm_dirty_log* log; } ;
struct dm_region {scalar_t__ state; int /*<<< orphan*/  list; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_region_sync ) (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DM_RH_NOSYNC ; 
 scalar_t__ DM_RH_RECOVERING ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 struct dm_region* FUNC1 (struct dm_region_hash*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_region*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_region_hash*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct dm_region_hash *rh, struct bio *bio)
{
	unsigned long flags;
	struct dm_dirty_log *log = rh->log;
	struct dm_region *reg;
	region_t region = FUNC4(rh, bio);
	int recovering = 0;

	if (bio->bi_opf & REQ_PREFLUSH) {
		rh->flush_failure = 1;
		return;
	}

	if (FUNC2(bio) == REQ_OP_DISCARD)
		return;

	/* We must inform the log that the sync count has changed. */
	log->type->set_region_sync(log, region, 0);

	FUNC6(&rh->hash_lock);
	reg = FUNC1(rh, region);
	FUNC7(&rh->hash_lock);

	/* region hash entry should exist because write was in-flight */
	FUNC0(!reg);
	FUNC0(!FUNC5(&reg->list));

	FUNC8(&rh->region_lock, flags);
	/*
	 * Possible cases:
	 *   1) DM_RH_DIRTY
	 *   2) DM_RH_NOSYNC: was dirty, other preceding writes failed
	 *   3) DM_RH_RECOVERING: flushing pending writes
	 * Either case, the region should have not been connected to list.
	 */
	recovering = (reg->state == DM_RH_RECOVERING);
	reg->state = DM_RH_NOSYNC;
	FUNC0(!FUNC5(&reg->list));
	FUNC9(&rh->region_lock, flags);

	if (recovering)
		FUNC3(reg, 0);
}