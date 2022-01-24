#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cc_pending; int /*<<< orphan*/  iter_out; struct bio* bio_out; } ;
struct dm_crypt_io {int /*<<< orphan*/  sector; TYPE_2__ ctx; scalar_t__ error; TYPE_3__* base_bio; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_iter; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_5__ {int /*<<< orphan*/  bi_size; } ;
struct TYPE_7__ {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (struct dm_crypt_io*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct crypt_config*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_config*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_crypt_io*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->cc;
	struct bio *clone;
	int crypt_finished;
	sector_t sector = io->sector;
	blk_status_t r;

	/*
	 * Prevent io from disappearing until this function completes.
	 */
	FUNC6(io);
	FUNC4(cc, &io->ctx, NULL, io->base_bio, sector);

	clone = FUNC2(io, io->base_bio->bi_iter.bi_size);
	if (FUNC8(!clone)) {
		io->error = BLK_STS_IOERR;
		goto dec;
	}

	io->ctx.bio_out = clone;
	io->ctx.iter_out = clone->bi_iter;

	sector += FUNC1(clone);

	FUNC6(io);
	r = FUNC3(cc, &io->ctx);
	if (r)
		io->error = r;
	crypt_finished = FUNC0(&io->ctx.cc_pending);

	/* Encryption was already finished, submit io now */
	if (crypt_finished) {
		FUNC7(io, 0);
		io->sector = sector;
	}

dec:
	FUNC5(io);
}