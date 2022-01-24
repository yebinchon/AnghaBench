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
struct TYPE_4__ {int bi_sector; int bi_size; } ;
struct dm_verity_io {int block; int n_blocks; TYPE_2__ iter; int /*<<< orphan*/  orig_bi_end_io; struct dm_verity* v; } ;
struct dm_verity {int data_dev_block_bits; int data_blocks; TYPE_1__* data_dev; } ;
struct dm_target {int /*<<< orphan*/  per_io_data_size; struct dm_verity* private; } ;
struct bio {TYPE_2__ bi_iter; struct dm_verity_io* bi_private; int /*<<< orphan*/  bi_end_io; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_SUBMITTED ; 
 int SECTOR_SHIFT ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int FUNC2 (struct bio*) ; 
 unsigned int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 struct dm_verity_io* FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  verity_end_io ; 
 int /*<<< orphan*/  FUNC7 (struct dm_verity_io*) ; 
 int FUNC8 (struct dm_verity*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_verity*,struct dm_verity_io*) ; 

__attribute__((used)) static int FUNC10(struct dm_target *ti, struct bio *bio)
{
	struct dm_verity *v = ti->private;
	struct dm_verity_io *io;

	FUNC4(bio, v->data_dev->bdev);
	bio->bi_iter.bi_sector = FUNC8(v, bio->bi_iter.bi_sector);

	if (((unsigned)bio->bi_iter.bi_sector | FUNC3(bio)) &
	    ((1 << (v->data_dev_block_bits - SECTOR_SHIFT)) - 1)) {
		FUNC0("unaligned io");
		return DM_MAPIO_KILL;
	}

	if (FUNC2(bio) >>
	    (v->data_dev_block_bits - SECTOR_SHIFT) > v->data_blocks) {
		FUNC0("io out of range");
		return DM_MAPIO_KILL;
	}

	if (FUNC1(bio) == WRITE)
		return DM_MAPIO_KILL;

	io = FUNC5(bio, ti->per_io_data_size);
	io->v = v;
	io->orig_bi_end_io = bio->bi_end_io;
	io->block = bio->bi_iter.bi_sector >> (v->data_dev_block_bits - SECTOR_SHIFT);
	io->n_blocks = bio->bi_iter.bi_size >> v->data_dev_block_bits;

	bio->bi_end_io = verity_end_io;
	bio->bi_private = io;
	io->iter = bio->bi_iter;

	FUNC7(io);

	FUNC9(v, io);

	FUNC6(bio);

	return DM_MAPIO_SUBMITTED;
}