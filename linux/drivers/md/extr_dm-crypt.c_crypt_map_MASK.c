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
struct skcipher_request {int dummy; } ;
struct dm_target {struct crypt_config* private; } ;
struct TYPE_7__ {struct skcipher_request* req; struct aead_request* req_aead; } ;
struct TYPE_8__ {TYPE_3__ r; } ;
struct dm_crypt_io {int integrity_metadata_from_pool; struct bio* base_bio; TYPE_4__ ctx; int /*<<< orphan*/  integrity_metadata; } ;
struct crypt_config {int start; int on_disk_tag_size; int sector_size; int sector_shift; int tag_pool_max_sectors; int /*<<< orphan*/  tag_pool; int /*<<< orphan*/  per_bio_data_size; TYPE_1__* dev; } ;
struct TYPE_6__ {int bi_sector; int bi_size; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; } ;
struct aead_request {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BIO_MAX_PAGES ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 unsigned int KMALLOC_MAX_SIZE ; 
 int PAGE_SHIFT ; 
 scalar_t__ READ ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int SECTOR_SHIFT ; 
 scalar_t__ WRITE ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct crypt_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*,struct crypt_config*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int) ; 
 struct dm_crypt_io* FUNC7 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dm_target*,int) ; 
 scalar_t__ FUNC9 (struct dm_crypt_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct dm_target *ti, struct bio *bio)
{
	struct dm_crypt_io *io;
	struct crypt_config *cc = ti->private;

	/*
	 * If bio is REQ_PREFLUSH or REQ_OP_DISCARD, just bypass crypt queues.
	 * - for REQ_PREFLUSH device-mapper core ensures that no IO is in-flight
	 * - for REQ_OP_DISCARD caller must use flush if IO ordering matters
	 */
	if (FUNC14(bio->bi_opf & REQ_PREFLUSH ||
	    FUNC1(bio) == REQ_OP_DISCARD)) {
		FUNC3(bio, cc->dev->bdev);
		if (FUNC2(bio))
			bio->bi_iter.bi_sector = cc->start +
				FUNC8(ti, bio->bi_iter.bi_sector);
		return DM_MAPIO_REMAPPED;
	}

	/*
	 * Check if bio is too large, split as needed.
	 */
	if (FUNC14(bio->bi_iter.bi_size > (BIO_MAX_PAGES << PAGE_SHIFT)) &&
	    (FUNC0(bio) == WRITE || cc->on_disk_tag_size))
		FUNC6(bio, ((BIO_MAX_PAGES << PAGE_SHIFT) >> SECTOR_SHIFT));

	/*
	 * Ensure that bio is a multiple of internal sector encryption size
	 * and is aligned to this size as defined in IO hints.
	 */
	if (FUNC14((bio->bi_iter.bi_sector & ((cc->sector_size >> SECTOR_SHIFT) - 1)) != 0))
		return DM_MAPIO_KILL;

	if (FUNC14(bio->bi_iter.bi_size & (cc->sector_size - 1)))
		return DM_MAPIO_KILL;

	io = FUNC7(bio, cc->per_bio_data_size);
	FUNC5(io, cc, bio, FUNC8(ti, bio->bi_iter.bi_sector));

	if (cc->on_disk_tag_size) {
		unsigned tag_len = cc->on_disk_tag_size * (FUNC2(bio) >> cc->sector_shift);

		if (FUNC14(tag_len > KMALLOC_MAX_SIZE) ||
		    FUNC14(!(io->integrity_metadata = FUNC12(tag_len,
				GFP_NOIO | __GFP_NORETRY | __GFP_NOMEMALLOC | __GFP_NOWARN)))) {
			if (FUNC2(bio) > cc->tag_pool_max_sectors)
				FUNC6(bio, cc->tag_pool_max_sectors);
			io->integrity_metadata = FUNC13(&cc->tag_pool, GFP_NOIO);
			io->integrity_metadata_from_pool = true;
		}
	}

	if (FUNC4(cc))
		io->ctx.r.req_aead = (struct aead_request *)(io + 1);
	else
		io->ctx.r.req = (struct skcipher_request *)(io + 1);

	if (FUNC0(io->base_bio) == READ) {
		if (FUNC9(io, GFP_NOWAIT))
			FUNC11(io);
	} else
		FUNC10(io);

	return DM_MAPIO_SUBMITTED;
}