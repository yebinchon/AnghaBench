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
struct pgpath {int dummy; } ;
struct multipath {int /*<<< orphan*/  process_queued_bios; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_bios; int /*<<< orphan*/  flags; int /*<<< orphan*/  current_pgpath; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct pgpath* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 struct pgpath* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 struct pgpath* FUNC3 (struct multipath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pgpath *FUNC8(struct multipath *m, struct bio *bio)
{
	struct pgpath *pgpath;
	unsigned long flags;

	/* Do we need to select a new pgpath? */
	/*
	 * FIXME: currently only switching path if no path (due to failure, etc)
	 * - which negates the point of using a path selector
	 */
	pgpath = FUNC1(m->current_pgpath);
	if (!pgpath)
		pgpath = FUNC3(m, bio->bi_iter.bi_size);

	if (!pgpath) {
		if (FUNC7(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) {
			/* Queue for the daemon to resubmit */
			FUNC5(&m->lock, flags);
			FUNC2(&m->queued_bios, bio);
			FUNC6(&m->lock, flags);
			FUNC4(kmultipathd, &m->process_queued_bios);

			return FUNC0(-EAGAIN);
		}
		return NULL;
	}

	return pgpath;
}