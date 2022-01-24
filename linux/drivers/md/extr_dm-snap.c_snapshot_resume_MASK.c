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
struct mapped_device {int dummy; } ;
struct dm_target {int /*<<< orphan*/  table; struct dm_snapshot* private; } ;
struct dm_snapshot {int active; int /*<<< orphan*/  lock; int /*<<< orphan*/  state_bits; TYPE_3__* ti; TYPE_1__* origin; } ;
struct dm_origin {TYPE_2__* ti; } ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_5__ {int /*<<< orphan*/  table; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUNNING_MERGE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,struct dm_snapshot**) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_snapshot*,struct dm_snapshot*) ; 
 struct dm_origin* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _origins_lock ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 struct mapped_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_snapshot*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct dm_target *ti)
{
	struct dm_snapshot *s = ti->private;
	struct dm_snapshot *snap_src = NULL, *snap_dest = NULL, *snap_merging = NULL;
	struct dm_origin *o;
	struct mapped_device *origin_md = NULL;
	bool must_restart_merging = false;

	FUNC8(&_origins_lock);

	o = FUNC2(s->origin->bdev);
	if (o)
		origin_md = FUNC7(o->ti->table);
	if (!origin_md) {
		(void) FUNC0(s, NULL, NULL, &snap_merging);
		if (snap_merging)
			origin_md = FUNC7(snap_merging->ti->table);
	}
	if (origin_md == FUNC7(ti->table))
		origin_md = NULL;
	if (origin_md) {
		if (FUNC3(origin_md))
			origin_md = NULL;
	}

	FUNC15(&_origins_lock);

	if (origin_md) {
		FUNC5(origin_md);
		if (snap_merging && FUNC14(RUNNING_MERGE, &snap_merging->state_bits)) {
			must_restart_merging = true;
			FUNC13(snap_merging);
		}
	}

	FUNC8(&_origins_lock);

	(void) FUNC0(s, &snap_src, &snap_dest, NULL);
	if (snap_src && snap_dest) {
		FUNC9(&snap_src->lock);
		FUNC10(&snap_dest->lock, SINGLE_DEPTH_NESTING);
		FUNC1(snap_src, snap_dest);
		FUNC16(&snap_dest->lock);
		FUNC16(&snap_src->lock);
	}

	FUNC15(&_origins_lock);

	if (origin_md) {
		if (must_restart_merging)
			FUNC12(snap_merging);
		FUNC4(origin_md);
		FUNC6(origin_md);
	}

	/* Now we have correct chunk size, reregister */
	FUNC11(s);

	FUNC9(&s->lock);
	s->active = 1;
	FUNC16(&s->lock);
}