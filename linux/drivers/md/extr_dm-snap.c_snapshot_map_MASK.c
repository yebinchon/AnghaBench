#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int snapshot_overflowed; int /*<<< orphan*/  lock; TYPE_3__* origin; scalar_t__ valid; TYPE_4__* store; int /*<<< orphan*/  complete; scalar_t__ discard_passdown_origin; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct dm_snap_pending_exception {int started; int /*<<< orphan*/  snapshot_bios; struct dm_exception e; } ;
struct dm_exception_table_lock {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
typedef  int /*<<< orphan*/  chunk_t ;
struct TYPE_8__ {scalar_t__ userspace_supports_overflow; } ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 scalar_t__ WRITE ; 
 struct dm_snap_pending_exception* FUNC1 (struct dm_snapshot*,struct dm_snap_pending_exception*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_snap_pending_exception* FUNC3 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_snap_pending_exception* FUNC4 (struct dm_snapshot*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snapshot*,int /*<<< orphan*/ ,struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_exception_table_lock*) ; 
 struct dm_exception* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC18 (struct bio*) ; 
 scalar_t__ FUNC19 (struct dm_snapshot*,struct bio*) ; 
 int /*<<< orphan*/  FUNC20 (struct dm_snapshot*,struct dm_exception*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC23 (struct dm_snap_pending_exception*,struct bio*) ; 
 int /*<<< orphan*/  FUNC24 (struct dm_snapshot*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct dm_snapshot*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct dm_snapshot*,struct dm_exception*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30(struct dm_target *ti, struct bio *bio)
{
	struct dm_exception *e;
	struct dm_snapshot *s = ti->private;
	int r = DM_MAPIO_REMAPPED;
	chunk_t chunk;
	struct dm_snap_pending_exception *pe = NULL;
	struct dm_exception_table_lock lock;

	FUNC18(bio);

	if (bio->bi_opf & REQ_PREFLUSH) {
		FUNC9(bio, s->cow->bdev);
		return DM_MAPIO_REMAPPED;
	}

	chunk = FUNC21(s->store, bio->bi_iter.bi_sector);
	FUNC12(s, chunk, &lock);

	/* Full snapshots are not usable */
	/* To get here the table must be live so s->active is always set. */
	if (!s->valid)
		return DM_MAPIO_KILL;

	if (FUNC5(bio) == WRITE) {
		while (FUNC25(!FUNC28(s, false)))
			; /* wait_for_in_progress() has slept */
	}

	FUNC15(&s->lock);
	FUNC11(&lock);

	if (!s->valid || (FUNC25(s->snapshot_overflowed) &&
	    FUNC5(bio) == WRITE)) {
		r = DM_MAPIO_KILL;
		goto out_unlock;
	}

	if (FUNC25(FUNC8(bio) == REQ_OP_DISCARD)) {
		if (s->discard_passdown_origin && FUNC10(bio)) {
			/*
			 * passdown discard to origin (without triggering
			 * snapshot exceptions via do_origin; doing so would
			 * defeat the goal of freeing space in origin that is
			 * implied by the "discard_passdown_origin" feature)
			 */
			FUNC9(bio, s->origin->bdev);
			FUNC24(s, bio, chunk);
			goto out_unlock;
		}
		/* discard to snapshot (target_bio_nr == 0) zeroes exceptions */
	}

	/* If the block is already remapped - use that, else remap it */
	e = FUNC14(&s->complete, chunk);
	if (e) {
		FUNC20(s, e, bio, chunk);
		if (FUNC25(FUNC8(bio) == REQ_OP_DISCARD) &&
		    FUNC19(s, bio)) {
			FUNC13(&lock);
			FUNC26(&s->lock);
			FUNC29(s, e, bio, chunk);
			r = DM_MAPIO_SUBMITTED; /* discard is not issued */
			goto out;
		}
		goto out_unlock;
	}

	if (FUNC25(FUNC8(bio) == REQ_OP_DISCARD)) {
		/*
		 * If no exception exists, complete discard immediately
		 * otherwise it'll trigger copy-out.
		 */
		FUNC6(bio);
		r = DM_MAPIO_SUBMITTED;
		goto out_unlock;
	}

	/*
	 * Write to snapshot - higher level takes care of RW/RO
	 * flags so we should only get this if we are
	 * writeable.
	 */
	if (FUNC5(bio) == WRITE) {
		pe = FUNC3(s, chunk);
		if (!pe) {
			FUNC13(&lock);
			pe = FUNC4(s);
			FUNC11(&lock);

			e = FUNC14(&s->complete, chunk);
			if (e) {
				FUNC17(pe);
				FUNC20(s, e, bio, chunk);
				goto out_unlock;
			}

			pe = FUNC1(s, pe, chunk);
			if (!pe) {
				FUNC13(&lock);
				FUNC26(&s->lock);

				FUNC16(&s->lock);

				if (s->store->userspace_supports_overflow) {
					if (s->valid && !s->snapshot_overflowed) {
						s->snapshot_overflowed = 1;
						FUNC0("Snapshot overflowed: Unable to allocate exception.");
					}
				} else
					FUNC2(s, -ENOMEM);
				FUNC27(&s->lock);

				r = DM_MAPIO_KILL;
				goto out;
			}
		}

		FUNC20(s, &pe->e, bio, chunk);

		r = DM_MAPIO_SUBMITTED;

		if (!pe->started && FUNC19(s, bio)) {
			pe->started = 1;

			FUNC13(&lock);
			FUNC26(&s->lock);

			FUNC23(pe, bio);
			goto out;
		}

		FUNC7(&pe->snapshot_bios, bio);

		if (!pe->started) {
			/* this is protected by the exception table lock */
			pe->started = 1;

			FUNC13(&lock);
			FUNC26(&s->lock);

			FUNC22(pe);
			goto out;
		}
	} else {
		FUNC9(bio, s->origin->bdev);
		FUNC24(s, bio, chunk);
	}

out_unlock:
	FUNC13(&lock);
	FUNC26(&s->lock);
out:
	return r;
}