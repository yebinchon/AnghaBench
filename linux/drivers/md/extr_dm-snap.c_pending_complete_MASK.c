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
struct dm_snapshot {int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  valid; } ;
struct dm_exception {int /*<<< orphan*/  old_chunk; } ;
struct dm_snap_pending_exception {int /*<<< orphan*/  full_bio_end_io; struct bio* full_bio; int /*<<< orphan*/  origin_bios; int /*<<< orphan*/  snapshot_bios; struct dm_exception e; struct dm_snapshot* snap; } ;
struct dm_exception_table_lock {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 struct dm_exception* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 struct bio* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_snapshot*,int /*<<< orphan*/ ,struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_exception_table_lock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_exception*) ; 
 int /*<<< orphan*/  FUNC15 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dm_snapshot*,struct bio*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(void *context, int success)
{
	struct dm_snap_pending_exception *pe = context;
	struct dm_exception *e;
	struct dm_snapshot *s = pe->snap;
	struct bio *origin_bios = NULL;
	struct bio *snapshot_bios = NULL;
	struct bio *full_bio = NULL;
	struct dm_exception_table_lock lock;
	int error = 0;

	FUNC7(s, pe->e.old_chunk, &lock);

	if (!success) {
		/* Read/write error - snapshot is unusable */
		FUNC17(s, -EIO);
		error = 1;

		FUNC6(&lock);
		goto out;
	}

	e = FUNC2(GFP_NOIO);
	if (!e) {
		FUNC17(s, -ENOMEM);
		error = 1;

		FUNC6(&lock);
		goto out;
	}
	*e = pe->e;

	FUNC11(&s->lock);
	FUNC6(&lock);
	if (!s->valid) {
		FUNC19(&s->lock);
		FUNC14(e);
		error = 1;

		goto out;
	}

	/*
	 * Add a proper exception. After inserting the completed exception all
	 * subsequent snapshot reads to this chunk will be redirected to the
	 * COW device.  This ensures that we do not starve. Moreover, as long
	 * as the pending exception exists, neither origin writes nor snapshot
	 * merging can overwrite the chunk in origin.
	 */
	FUNC9(&s->complete, e);
	FUNC19(&s->lock);

	/* Wait for conflicting reads to drain */
	if (FUNC1(s, pe->e.old_chunk)) {
		FUNC8(&lock);
		FUNC0(s, pe->e.old_chunk);
		FUNC6(&lock);
	}

out:
	/* Remove the in-flight exception from the list */
	FUNC10(&pe->e);

	FUNC8(&lock);

	snapshot_bios = FUNC5(&pe->snapshot_bios);
	origin_bios = FUNC5(&pe->origin_bios);
	full_bio = pe->full_bio;
	if (full_bio)
		full_bio->bi_end_io = pe->full_bio_end_io;
	FUNC16();

	/* Submit any pending write bios */
	if (error) {
		if (full_bio)
			FUNC4(full_bio);
		FUNC12(snapshot_bios);
	} else {
		if (full_bio)
			FUNC3(full_bio);
		FUNC13(snapshot_bios);
	}

	FUNC18(s, origin_bios);

	FUNC15(pe);
}