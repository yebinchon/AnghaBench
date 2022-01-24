#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  queue_flags; } ;
struct r5l_payload_data_parity {int dummy; } ;
struct r5l_meta_block {int dummy; } ;
struct r5l_log {int need_cache_flush; int /*<<< orphan*/  io_kc; int /*<<< orphan*/  io_pool; int /*<<< orphan*/  bs; int /*<<< orphan*/  meta_pool; int /*<<< orphan*/  stripe_in_journal_count; int /*<<< orphan*/  stripe_in_journal_lock; int /*<<< orphan*/  stripe_in_journal_list; int /*<<< orphan*/  r5c_journal_mode; int /*<<< orphan*/  disable_writeback_work; int /*<<< orphan*/  deferred_io_work; int /*<<< orphan*/  no_space_stripes_lock; int /*<<< orphan*/  no_space_stripes; int /*<<< orphan*/  no_mem_stripes; int /*<<< orphan*/  iounit_wait; TYPE_2__* reclaim_thread; struct md_rdev* rdev; int /*<<< orphan*/  big_stripe_tree; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  flush_bio; int /*<<< orphan*/  finished_ios; int /*<<< orphan*/  flushing_ios; int /*<<< orphan*/  io_end_ios; int /*<<< orphan*/  running_ios; int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  uuid_checksum; } ;
struct r5conf {int raid_disks; TYPE_1__* mddev; int /*<<< orphan*/  log; } ;
struct md_rdev {TYPE_3__* mddev; int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  uuid; } ;
struct TYPE_5__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  BIOSET_NEED_BVECS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MD_HAS_JOURNAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_WC ; 
 int /*<<< orphan*/  R5C_JOURNAL_MODE_WRITE_THROUGH ; 
 int /*<<< orphan*/  R5C_RECLAIM_WAKEUP_INTERVAL ; 
 int /*<<< orphan*/  R5L_POOL_SIZE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct r5l_log* FUNC14 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  r5c_disable_writeback_async ; 
 int /*<<< orphan*/  r5l_io_unit ; 
 int /*<<< orphan*/  r5l_reclaim_thread ; 
 int /*<<< orphan*/  r5l_submit_io_async ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC27(struct r5conf *conf, struct md_rdev *rdev)
{
	struct request_queue *q = FUNC5(rdev->bdev);
	struct r5l_log *log;
	char b[BDEVNAME_SIZE];
	int ret;

	FUNC21("md/raid:%s: using device %s as journal\n",
		 FUNC16(conf->mddev), FUNC6(rdev->bdev, b));

	if (PAGE_SIZE != 4096)
		return -EINVAL;

	/*
	 * The PAGE_SIZE must be big enough to hold 1 r5l_meta_block and
	 * raid_disks r5l_payload_data_parity.
	 *
	 * Write journal and cache does not work for very big array
	 * (raid_disks > 203)
	 */
	if (sizeof(struct r5l_meta_block) +
	    ((sizeof(struct r5l_payload_data_parity) + sizeof(__le32)) *
	     conf->raid_disks) > PAGE_SIZE) {
		FUNC22("md/raid:%s: write journal/cache doesn't work for array with %d disks\n",
		       FUNC16(conf->mddev), conf->raid_disks);
		return -EINVAL;
	}

	log = FUNC14(sizeof(*log), GFP_KERNEL);
	if (!log)
		return -ENOMEM;
	log->rdev = rdev;

	log->need_cache_flush = FUNC26(QUEUE_FLAG_WC, &q->queue_flags) != 0;

	log->uuid_checksum = FUNC10(~0, rdev->mddev->uuid,
				       sizeof(rdev->mddev->uuid));

	FUNC20(&log->io_mutex);

	FUNC25(&log->io_list_lock);
	FUNC0(&log->running_ios);
	FUNC0(&log->io_end_ios);
	FUNC0(&log->flushing_ios);
	FUNC0(&log->finished_ios);
	FUNC7(&log->flush_bio, NULL, 0);

	log->io_kc = FUNC3(r5l_io_unit, 0);
	if (!log->io_kc)
		goto io_kc;

	ret = FUNC19(&log->io_pool, R5L_POOL_SIZE, log->io_kc);
	if (ret)
		goto io_pool;

	ret = FUNC9(&log->bs, R5L_POOL_SIZE, 0, BIOSET_NEED_BVECS);
	if (ret)
		goto io_bs;

	ret = FUNC18(&log->meta_pool, R5L_POOL_SIZE, 0);
	if (ret)
		goto out_mempool;

	FUNC25(&log->tree_lock);
	FUNC1(&log->big_stripe_tree, GFP_NOWAIT | __GFP_NOWARN);

	log->reclaim_thread = FUNC15(r5l_reclaim_thread,
						 log->rdev->mddev, "reclaim");
	if (!log->reclaim_thread)
		goto reclaim_thread;
	log->reclaim_thread->timeout = R5C_RECLAIM_WAKEUP_INTERVAL;

	FUNC11(&log->iounit_wait);

	FUNC0(&log->no_mem_stripes);

	FUNC0(&log->no_space_stripes);
	FUNC25(&log->no_space_stripes_lock);

	FUNC2(&log->deferred_io_work, r5l_submit_io_async);
	FUNC2(&log->disable_writeback_work, r5c_disable_writeback_async);

	log->r5c_journal_mode = R5C_JOURNAL_MODE_WRITE_THROUGH;
	FUNC0(&log->stripe_in_journal_list);
	FUNC25(&log->stripe_in_journal_lock);
	FUNC4(&log->stripe_in_journal_count, 0);

	FUNC23(conf->log, log);

	FUNC24(MD_HAS_JOURNAL, &conf->mddev->flags);
	return 0;

reclaim_thread:
	FUNC17(&log->meta_pool);
out_mempool:
	FUNC8(&log->bs);
io_bs:
	FUNC17(&log->io_pool);
io_pool:
	FUNC13(log->io_kc);
io_kc:
	FUNC12(log);
	return -EINVAL;
}