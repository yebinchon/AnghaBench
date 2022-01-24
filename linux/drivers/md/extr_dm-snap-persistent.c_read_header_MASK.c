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
struct pstore {TYPE_2__* store; void* version; void* valid; struct disk_header* header_area; int /*<<< orphan*/  io_client; } ;
struct disk_header {int /*<<< orphan*/  chunk_size; int /*<<< orphan*/  version; int /*<<< orphan*/  valid; int /*<<< orphan*/  magic; } ;
struct TYPE_4__ {int chunk_size; int chunk_mask; int /*<<< orphan*/  chunk_shift; int /*<<< orphan*/  snap; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DM_CHUNK_SIZE_DEFAULT_SECTORS ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 void* SNAP_MAGIC ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct pstore*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pstore*,struct disk_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*,unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pstore*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct pstore *ps, int *new_snapshot)
{
	int r;
	struct disk_header *dh;
	unsigned chunk_size;
	int chunk_size_supplied = 1;
	char *chunk_err;

	/*
	 * Use default chunk size (or logical_block_size, if larger)
	 * if none supplied
	 */
	if (!ps->store->chunk_size) {
		ps->store->chunk_size = FUNC13(DM_CHUNK_SIZE_DEFAULT_SECTORS,
		    FUNC6(FUNC10(ps->store->snap)->
					    bdev) >> 9);
		ps->store->chunk_mask = ps->store->chunk_size - 1;
		ps->store->chunk_shift = FUNC4(ps->store->chunk_size);
		chunk_size_supplied = 0;
	}

	ps->io_client = FUNC9();
	if (FUNC2(ps->io_client))
		return FUNC3(ps->io_client);

	r = FUNC5(ps);
	if (r)
		return r;

	r = FUNC7(ps, ps->header_area, 0, REQ_OP_READ, 0, 1);
	if (r)
		goto bad;

	dh = ps->header_area;

	if (FUNC12(dh->magic) == 0) {
		*new_snapshot = 1;
		return 0;
	}

	if (FUNC12(dh->magic) != SNAP_MAGIC) {
		FUNC1("Invalid or corrupt snapshot");
		r = -ENXIO;
		goto bad;
	}

	*new_snapshot = 0;
	ps->valid = FUNC12(dh->valid);
	ps->version = FUNC12(dh->version);
	chunk_size = FUNC12(dh->chunk_size);

	if (ps->store->chunk_size == chunk_size)
		return 0;

	if (chunk_size_supplied)
		FUNC1("chunk size %u in device metadata overrides "
		       "table chunk size of %u.",
		       chunk_size, ps->store->chunk_size);

	/* We had a bogus chunk_size. Fix stuff up. */
	FUNC11(ps);

	r = FUNC8(ps->store, chunk_size,
					      &chunk_err);
	if (r) {
		FUNC0("invalid on-disk chunk size %u: %s.",
		      chunk_size, chunk_err);
		return r;
	}

	r = FUNC5(ps);
	return r;

bad:
	FUNC11(ps);
	return r;
}