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
struct mapped_device {int /*<<< orphan*/  deferred_lock; int /*<<< orphan*/  deferred; } ;
struct dm_io {scalar_t__ status; struct bio* orig_bio; int /*<<< orphan*/  io_count; int /*<<< orphan*/  endio_lock; struct mapped_device* md; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {int bi_opf; scalar_t__ bi_status; TYPE_1__ bi_iter; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ BLK_STS_DM_REQUEUE ; 
 scalar_t__ BLK_STS_IOERR ; 
 int REQ_PREFLUSH ; 
 scalar_t__ FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_io*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*,struct dm_io*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct dm_io *io, blk_status_t error)
{
	unsigned long flags;
	blk_status_t io_error;
	struct bio *bio;
	struct mapped_device *md = io->md;

	/* Push-back supersedes any I/O errors */
	if (FUNC9(error)) {
		FUNC7(&io->endio_lock, flags);
		if (!(io->status == BLK_STS_DM_REQUEUE && FUNC0(md)))
			io->status = error;
		FUNC8(&io->endio_lock, flags);
	}

	if (FUNC1(&io->io_count)) {
		if (io->status == BLK_STS_DM_REQUEUE) {
			/*
			 * Target requested pushing back the I/O.
			 */
			FUNC7(&md->deferred_lock, flags);
			if (FUNC0(md))
				/* NOTE early return due to BLK_STS_DM_REQUEUE below */
				FUNC3(&md->deferred, io->orig_bio);
			else
				/* noflush suspend was interrupted. */
				io->status = BLK_STS_IOERR;
			FUNC8(&md->deferred_lock, flags);
		}

		io_error = io->status;
		bio = io->orig_bio;
		FUNC4(io);
		FUNC5(md, io);

		if (io_error == BLK_STS_DM_REQUEUE)
			return;

		if ((bio->bi_opf & REQ_PREFLUSH) && bio->bi_iter.bi_size) {
			/*
			 * Preflush done for flush with data, reissue
			 * without REQ_PREFLUSH.
			 */
			bio->bi_opf &= ~REQ_PREFLUSH;
			FUNC6(md, bio);
		} else {
			/* done with normal IO or empty flush */
			if (io_error)
				bio->bi_status = io_error;
			FUNC2(bio);
		}
	}
}