#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {scalar_t__ first_merging_chunk; scalar_t__ num_merging_chunks; int /*<<< orphan*/  lock; TYPE_3__* origin; int /*<<< orphan*/  bios_queued_during_merge; int /*<<< orphan*/  complete; int /*<<< orphan*/  valid; int /*<<< orphan*/  store; TYPE_1__* cow; } ;
struct dm_exception {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
typedef  scalar_t__ chunk_t ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 struct dm_exception* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (TYPE_3__*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_snapshot*,struct dm_exception*,struct bio*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snapshot*,struct bio*,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dm_target *ti, struct bio *bio)
{
	struct dm_exception *e;
	struct dm_snapshot *s = ti->private;
	int r = DM_MAPIO_REMAPPED;
	chunk_t chunk;

	FUNC9(bio);

	if (bio->bi_opf & REQ_PREFLUSH) {
		if (!FUNC5(bio))
			FUNC4(bio, s->origin->bdev);
		else
			FUNC4(bio, s->cow->bdev);
		return DM_MAPIO_REMAPPED;
	}

	if (FUNC13(FUNC3(bio) == REQ_OP_DISCARD)) {
		/* Once merging, discards no longer effect change */
		FUNC1(bio);
		return DM_MAPIO_SUBMITTED;
	}

	chunk = FUNC11(s->store, bio->bi_iter.bi_sector);

	FUNC8(&s->lock);

	/* Full merging snapshots are redirected to the origin */
	if (!s->valid)
		goto redirect_to_origin;

	/* If the block is already remapped - use that */
	e = FUNC6(&s->complete, chunk);
	if (e) {
		/* Queue writes overlapping with chunks being merged */
		if (FUNC0(bio) == WRITE &&
		    chunk >= s->first_merging_chunk &&
		    chunk < (s->first_merging_chunk +
			     s->num_merging_chunks)) {
			FUNC4(bio, s->origin->bdev);
			FUNC2(&s->bios_queued_during_merge, bio);
			r = DM_MAPIO_SUBMITTED;
			goto out_unlock;
		}

		FUNC10(s, e, bio, chunk);

		if (FUNC0(bio) == WRITE)
			FUNC12(s, bio, chunk);
		goto out_unlock;
	}

redirect_to_origin:
	FUNC4(bio, s->origin->bdev);

	if (FUNC0(bio) == WRITE) {
		FUNC14(&s->lock);
		return FUNC7(s->origin, bio, false);
	}

out_unlock:
	FUNC14(&s->lock);

	return r;
}