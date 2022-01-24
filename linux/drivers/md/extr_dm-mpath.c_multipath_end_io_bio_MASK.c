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
struct pgpath {int /*<<< orphan*/  path; TYPE_1__* pg; } ;
struct path_selector {TYPE_2__* type; } ;
struct multipath {int /*<<< orphan*/  process_queued_bios; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_bios; int /*<<< orphan*/  nr_valid_paths; } ;
struct dm_target {struct multipath* private; } ;
struct dm_mpath_io {int /*<<< orphan*/  nr_bytes; struct pgpath* pgpath; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* end_io ) (struct path_selector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct path_selector ps; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 int DM_ENDIO_DONE ; 
 int DM_ENDIO_INCOMPLETE ; 
 int DM_ENDIO_REQUEUE ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC4 (struct pgpath*) ; 
 struct dm_mpath_io* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  kmultipathd ; 
 scalar_t__ FUNC6 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct path_selector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, struct bio *clone,
				blk_status_t *error)
{
	struct multipath *m = ti->private;
	struct dm_mpath_io *mpio = FUNC5(clone);
	struct pgpath *pgpath = mpio->pgpath;
	unsigned long flags;
	int r = DM_ENDIO_DONE;

	if (!*error || !FUNC2(*error))
		goto done;

	if (pgpath)
		FUNC4(pgpath);

	if (FUNC0(&m->nr_valid_paths) == 0 &&
	    !FUNC11(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) {
		if (FUNC6(m)) {
			r = DM_ENDIO_REQUEUE;
		} else {
			FUNC3(m);
			*error = BLK_STS_IOERR;
		}
		goto done;
	}

	FUNC8(&m->lock, flags);
	FUNC1(&m->queued_bios, clone);
	FUNC9(&m->lock, flags);
	if (!FUNC11(MPATHF_QUEUE_IO, &m->flags))
		FUNC7(kmultipathd, &m->process_queued_bios);

	r = DM_ENDIO_INCOMPLETE;
done:
	if (pgpath) {
		struct path_selector *ps = &pgpath->pg->ps;

		if (ps->type->end_io)
			ps->type->end_io(ps, &pgpath->path, mpio->nr_bytes);
	}

	return r;
}