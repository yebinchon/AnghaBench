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
struct multipath {int /*<<< orphan*/  process_queued_bios; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued_bios; int /*<<< orphan*/  current_pgpath; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct pgpath* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
 struct pgpath* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 struct pgpath* FUNC3 (struct multipath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC4 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct pgpath *FUNC9(struct multipath *m, struct bio *bio)
{
	struct pgpath *pgpath;
	unsigned long flags;
	bool queue_io;

	/* Do we need to select a new pgpath? */
	pgpath = FUNC1(m->current_pgpath);
	queue_io = FUNC8(MPATHF_QUEUE_IO, &m->flags);
	if (!pgpath || !queue_io)
		pgpath = FUNC3(m, bio->bi_iter.bi_size);

	if ((pgpath && queue_io) ||
	    (!pgpath && FUNC8(MPATHF_QUEUE_IF_NO_PATH, &m->flags))) {
		/* Queue for the daemon to resubmit */
		FUNC6(&m->lock, flags);
		FUNC2(&m->queued_bios, bio);
		FUNC7(&m->lock, flags);

		/* PG_INIT_REQUIRED cannot be set without QUEUE_IO */
		if (queue_io || FUNC8(MPATHF_PG_INIT_REQUIRED, &m->flags))
			FUNC4(m);
		else if (!queue_io)
			FUNC5(kmultipathd, &m->process_queued_bios);

		return FUNC0(-EAGAIN);
	}

	return pgpath;
}