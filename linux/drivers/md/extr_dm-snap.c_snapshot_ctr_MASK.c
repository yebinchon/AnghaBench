#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dm_target {char* error; unsigned int num_flush_bios; int num_discard_bios; int per_io_data_size; struct dm_snapshot* private; int /*<<< orphan*/  table; } ;
struct dm_snapshot {int valid; TYPE_4__* origin; TYPE_4__* cow; TYPE_3__* store; int /*<<< orphan*/  complete; int /*<<< orphan*/  pending; int /*<<< orphan*/  kcopyd_client; int /*<<< orphan*/  pending_pool; scalar_t__ discard_passdown_origin; scalar_t__ discard_zeroes_cow; int /*<<< orphan*/  tracked_chunk_lock; int /*<<< orphan*/ * tracked_chunk_hash; int /*<<< orphan*/  in_progress_wait; int /*<<< orphan*/  bios_queued_during_merge; scalar_t__ num_merging_chunks; scalar_t__ first_merging_chunk; scalar_t__ merge_failed; scalar_t__ state_bits; int /*<<< orphan*/  pe_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  out_of_order_tree; scalar_t__ exception_complete_sequence; scalar_t__ exception_start_sequence; int /*<<< orphan*/  pe_allocation_lock; int /*<<< orphan*/  pending_exceptions_count; scalar_t__ active; scalar_t__ snapshot_overflowed; struct dm_target* ti; } ;
struct dm_snap_tracked_chunk {int dummy; } ;
struct dm_arg_set {unsigned int argc; char** argv; } ;
typedef  int /*<<< orphan*/  fmode_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_11__ {TYPE_2__* bdev; } ;
struct TYPE_10__ {scalar_t__ chunk_size; TYPE_1__* type; } ;
struct TYPE_9__ {scalar_t__ bd_dev; } ;
struct TYPE_8__ {int (* read_metadata ) (TYPE_3__*,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_TRACKED_CHUNK_HASH_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_IOS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_add_exception ; 
 int /*<<< orphan*/  FUNC7 (struct dm_arg_set*,int) ; 
 int FUNC8 (struct dm_target*,unsigned int,char**,struct dm_snapshot*,unsigned int*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int FUNC12 (struct dm_target*,char*,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_kcopyd_throttle ; 
 int /*<<< orphan*/  FUNC15 (struct dm_target*,TYPE_4__*) ; 
 int FUNC16 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct dm_target*) ; 
 int /*<<< orphan*/  exception_cache ; 
 scalar_t__ FUNC19 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct dm_snapshot*) ; 
 struct dm_snapshot* FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct dm_arg_set*,struct dm_snapshot*,struct dm_target*) ; 
 int /*<<< orphan*/  pending_cache ; 
 int FUNC27 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (TYPE_3__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC30 (struct dm_snapshot*) ; 

__attribute__((used)) static int FUNC31(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct dm_snapshot *s;
	struct dm_arg_set as;
	int i;
	int r = -EINVAL;
	char *origin_path, *cow_path;
	dev_t origin_dev, cow_dev;
	unsigned args_used, num_flush_bios = 1;
	fmode_t origin_mode = FMODE_READ;

	if (argc < 4) {
		ti->error = "requires 4 or more arguments";
		r = -EINVAL;
		goto bad;
	}

	if (FUNC18(ti)) {
		num_flush_bios = 2;
		origin_mode = FMODE_WRITE;
	}

	s = FUNC23(sizeof(*s), GFP_KERNEL);
	if (!s) {
		ti->error = "Cannot allocate private snapshot structure";
		r = -ENOMEM;
		goto bad;
	}

	as.argc = argc;
	as.argv = argv;
	FUNC7(&as, 4);
	r = FUNC26(&as, s, ti);
	if (r)
		goto bad_features;

	origin_path = argv[0];
	argv++;
	argc--;

	r = FUNC12(ti, origin_path, origin_mode, &s->origin);
	if (r) {
		ti->error = "Cannot get origin device";
		goto bad_origin;
	}
	origin_dev = s->origin->bdev->bd_dev;

	cow_path = argv[0];
	argv++;
	argc--;

	cow_dev = FUNC11(cow_path);
	if (cow_dev && cow_dev == origin_dev) {
		ti->error = "COW device cannot be the same as origin device";
		r = -EINVAL;
		goto bad_cow;
	}

	r = FUNC12(ti, cow_path, FUNC17(ti->table), &s->cow);
	if (r) {
		ti->error = "Cannot get COW device";
		goto bad_cow;
	}

	r = FUNC8(ti, argc, argv, s, &args_used, &s->store);
	if (r) {
		ti->error = "Couldn't create exception store";
		r = -EINVAL;
		goto bad_store;
	}

	argv += args_used;
	argc -= args_used;

	s->ti = ti;
	s->valid = 1;
	s->snapshot_overflowed = 0;
	s->active = 0;
	FUNC5(&s->pending_exceptions_count, 0);
	FUNC28(&s->pe_allocation_lock);
	s->exception_start_sequence = 0;
	s->exception_complete_sequence = 0;
	s->out_of_order_tree = RB_ROOT;
	FUNC20(&s->lock);
	FUNC2(&s->list);
	FUNC28(&s->pe_lock);
	s->state_bits = 0;
	s->merge_failed = 0;
	s->first_merging_chunk = 0;
	s->num_merging_chunks = 0;
	FUNC6(&s->bios_queued_during_merge);

	/* Allocate hash table for COW data */
	if (FUNC19(s)) {
		ti->error = "Unable to allocate hash table space";
		r = -ENOMEM;
		goto bad_hash_tables;
	}

	FUNC21(&s->in_progress_wait);

	s->kcopyd_client = FUNC13(&dm_kcopyd_throttle);
	if (FUNC3(s->kcopyd_client)) {
		r = FUNC4(s->kcopyd_client);
		ti->error = "Could not create kcopyd client";
		goto bad_kcopyd;
	}

	r = FUNC25(&s->pending_pool, MIN_IOS, pending_cache);
	if (r) {
		ti->error = "Could not allocate mempool for pending exceptions";
		goto bad_pending_pool;
	}

	for (i = 0; i < DM_TRACKED_CHUNK_HASH_SIZE; i++)
		FUNC1(&s->tracked_chunk_hash[i]);

	FUNC28(&s->tracked_chunk_lock);

	ti->private = s;
	ti->num_flush_bios = num_flush_bios;
	if (s->discard_zeroes_cow)
		ti->num_discard_bios = (s->discard_passdown_origin ? 2 : 1);
	ti->per_io_data_size = sizeof(struct dm_snap_tracked_chunk);

	/* Add snapshot to the list of snapshots for this origin */
	/* Exceptions aren't triggered till snapshot_resume() is called */
	r = FUNC27(s);
	if (r == -ENOMEM) {
		ti->error = "Snapshot origin struct allocation failed";
		goto bad_load_and_register;
	} else if (r < 0) {
		/* invalid handover, register_snapshot has set ti->error */
		goto bad_load_and_register;
	}

	/*
	 * Metadata must only be loaded into one table at once, so skip this
	 * if metadata will be handed over during resume.
	 * Chunk size will be set during the handover - set it to zero to
	 * ensure it's ignored.
	 */
	if (r > 0) {
		s->store->chunk_size = 0;
		return 0;
	}

	r = s->store->type->read_metadata(s->store, dm_add_exception,
					  (void *)s);
	if (r < 0) {
		ti->error = "Failed to read snapshot metadata";
		goto bad_read_metadata;
	} else if (r > 0) {
		s->valid = 0;
		FUNC0("Snapshot is marked invalid.");
	}

	if (!s->store->chunk_size) {
		ti->error = "Chunk size not set";
		goto bad_read_metadata;
	}

	r = FUNC16(ti, s->store->chunk_size);
	if (r)
		goto bad_read_metadata;

	return 0;

bad_read_metadata:
	FUNC30(s);
bad_load_and_register:
	FUNC24(&s->pending_pool);
bad_pending_pool:
	FUNC14(s->kcopyd_client);
bad_kcopyd:
	FUNC10(&s->pending, pending_cache);
	FUNC10(&s->complete, exception_cache);
bad_hash_tables:
	FUNC9(s->store);
bad_store:
	FUNC15(ti, s->cow);
bad_cow:
	FUNC15(ti, s->origin);
bad_origin:
bad_features:
	FUNC22(s);
bad:
	return r;
}