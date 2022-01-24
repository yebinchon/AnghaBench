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
struct verify_rq_based_data {scalar_t__ sq_count; int /*<<< orphan*/  mq_count; } ;
struct list_head {int dummy; } ;
struct dm_target {TYPE_1__* type; scalar_t__ max_io_len; } ;
struct dm_table {scalar_t__ type; unsigned int num_targets; int /*<<< orphan*/  md; struct dm_target* targets; } ;
typedef  enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;
struct TYPE_2__ {int /*<<< orphan*/  (* iterate_devices ) (struct dm_target*,int /*<<< orphan*/ ,struct verify_rq_based_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ DM_TYPE_BIO_BASED ; 
 scalar_t__ DM_TYPE_DAX_BIO_BASED ; 
 scalar_t__ DM_TYPE_NONE ; 
 scalar_t__ DM_TYPE_NVME_BIO_BASED ; 
 scalar_t__ DM_TYPE_REQUEST_BASED ; 
 int EINVAL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  device_is_rq_based ; 
 int /*<<< orphan*/  device_supports_dax ; 
 struct dm_table* FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct dm_table*) ; 
 struct list_head* FUNC7 (struct dm_table*) ; 
 struct dm_target* FUNC8 (struct dm_table*) ; 
 scalar_t__ FUNC9 (struct dm_table*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (struct dm_target*) ; 
 scalar_t__ FUNC11 (struct dm_target*) ; 
 scalar_t__ FUNC12 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_target*,int /*<<< orphan*/ ,struct verify_rq_based_data*) ; 

__attribute__((used)) static int FUNC14(struct dm_table *t)
{
	unsigned i;
	unsigned bio_based = 0, request_based = 0, hybrid = 0;
	struct verify_rq_based_data v = {.sq_count = 0, .mq_count = 0};
	struct dm_target *tgt;
	struct list_head *devices = FUNC7(t);
	enum dm_queue_mode live_md_type = FUNC4(t->md);
	int page_size = PAGE_SIZE;

	if (t->type != DM_TYPE_NONE) {
		/* target already set the table's type */
		if (t->type == DM_TYPE_BIO_BASED) {
			/* possibly upgrade to a variant of bio-based */
			goto verify_bio_based;
		}
		FUNC0(t->type == DM_TYPE_DAX_BIO_BASED);
		FUNC0(t->type == DM_TYPE_NVME_BIO_BASED);
		goto verify_rq_based;
	}

	for (i = 0; i < t->num_targets; i++) {
		tgt = t->targets + i;
		if (FUNC10(tgt))
			hybrid = 1;
		else if (FUNC11(tgt))
			request_based = 1;
		else
			bio_based = 1;

		if (bio_based && request_based) {
			FUNC1("Inconsistent table: different target types"
			      " can't be mixed up");
			return -EINVAL;
		}
	}

	if (hybrid && !bio_based && !request_based) {
		/*
		 * The targets can work either way.
		 * Determine the type from the live device.
		 * Default to bio-based if device is new.
		 */
		if (FUNC2(live_md_type))
			request_based = 1;
		else
			bio_based = 1;
	}

	if (bio_based) {
verify_bio_based:
		/* We must use this table as bio-based */
		t->type = DM_TYPE_BIO_BASED;
		if (FUNC9(t, device_supports_dax, &page_size) ||
		    (FUNC12(devices) && live_md_type == DM_TYPE_DAX_BIO_BASED)) {
			t->type = DM_TYPE_DAX_BIO_BASED;
		} else {
			/* Check if upgrading to NVMe bio-based is valid or required */
			tgt = FUNC8(t);
			if (tgt && !tgt->max_io_len && FUNC6(t)) {
				t->type = DM_TYPE_NVME_BIO_BASED;
				goto verify_rq_based; /* must be stacked directly on NVMe (blk-mq) */
			} else if (FUNC12(devices) && live_md_type == DM_TYPE_NVME_BIO_BASED) {
				t->type = DM_TYPE_NVME_BIO_BASED;
			}
		}
		return 0;
	}

	FUNC0(!request_based); /* No targets in this table */

	t->type = DM_TYPE_REQUEST_BASED;

verify_rq_based:
	/*
	 * Request-based dm supports only tables that have a single target now.
	 * To support multiple targets, request splitting support is needed,
	 * and that needs lots of changes in the block-layer.
	 * (e.g. request completion process for partial completion.)
	 */
	if (t->num_targets > 1) {
		FUNC1("%s DM doesn't support multiple targets",
		      t->type == DM_TYPE_NVME_BIO_BASED ? "nvme bio-based" : "request-based");
		return -EINVAL;
	}

	if (FUNC12(devices)) {
		int srcu_idx;
		struct dm_table *live_table = FUNC3(t->md, &srcu_idx);

		/* inherit live table's type */
		if (live_table)
			t->type = live_table->type;
		FUNC5(t->md, srcu_idx);
		return 0;
	}

	tgt = FUNC8(t);
	if (!tgt) {
		FUNC1("table load rejected: immutable target is required");
		return -EINVAL;
	} else if (tgt->max_io_len) {
		FUNC1("table load rejected: immutable target that splits IO is not supported");
		return -EINVAL;
	}

	/* Non-request-stackable devices can't be used for request-based dm */
	if (!tgt->type->iterate_devices ||
	    !tgt->type->iterate_devices(tgt, device_is_rq_based, &v)) {
		FUNC1("table load rejected: including non-request-stackable devices");
		return -EINVAL;
	}
	if (v.sq_count > 0) {
		FUNC1("table load rejected: not all devices are blk-mq request-stackable");
		return -EINVAL;
	}

	return 0;
}