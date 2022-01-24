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
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {int /*<<< orphan*/  in_progress; int /*<<< orphan*/  origin; int /*<<< orphan*/  cow; int /*<<< orphan*/  store; int /*<<< orphan*/  pending_pool; int /*<<< orphan*/ * tracked_chunk_hash; int /*<<< orphan*/  pending_exceptions_count; int /*<<< orphan*/  lock; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DM_TRACKED_CHUNK_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  _origins_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_target*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC17 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct dm_target *ti)
{
#ifdef CONFIG_DM_DEBUG
	int i;
#endif
	struct dm_snapshot *s = ti->private;
	struct dm_snapshot *snap_src = NULL, *snap_dest = NULL;

	FUNC9(&_origins_lock);
	/* Check whether exception handover must be cancelled */
	(void) FUNC3(s, &snap_src, &snap_dest, NULL);
	if (snap_src && snap_dest && (s == snap_src)) {
		FUNC10(&snap_dest->lock);
		snap_dest->valid = 0;
		FUNC19(&snap_dest->lock);
		FUNC1("Cancelling snapshot handover.");
	}
	FUNC18(&_origins_lock);

	if (FUNC8(ti))
		FUNC16(s);

	/* Prevent further origin writes from using this snapshot. */
	/* After this returns there can be no new kcopyd jobs. */
	FUNC17(s);

	while (FUNC5(&s->pending_exceptions_count))
		FUNC14(1);
	/*
	 * Ensure instructions in mempool_exit aren't reordered
	 * before atomic_read.
	 */
	FUNC15();

#ifdef CONFIG_DM_DEBUG
	for (i = 0; i < DM_TRACKED_CHUNK_HASH_SIZE; i++)
		BUG_ON(!hlist_empty(&s->tracked_chunk_hash[i]));
#endif

	FUNC4(s);

	FUNC13(&s->pending_pool);

	FUNC6(s->store);

	FUNC7(ti, s->cow);

	FUNC7(ti, s->origin);

	FUNC2(s->in_progress);

	FUNC12(s);
}