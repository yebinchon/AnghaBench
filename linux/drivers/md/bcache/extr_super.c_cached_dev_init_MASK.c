#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int io_opt; int /*<<< orphan*/  raid_partial_stripes_expensive; } ;
struct request_queue {TYPE_7__* backing_dev_info; TYPE_1__ limits; } ;
struct io {int /*<<< orphan*/  hash; int /*<<< orphan*/  lru; } ;
struct TYPE_18__ {int stripe_size; TYPE_6__* disk; int /*<<< orphan*/  cl; int /*<<< orphan*/  kobj; } ;
struct TYPE_12__ {scalar_t__ data_offset; } ;
struct cached_dev {int sequential_cutoff; int io_hash; int io_disable; int /*<<< orphan*/  stop_when_cache_set_failed; int /*<<< orphan*/  error_limit; int /*<<< orphan*/  io_errors; TYPE_9__ disk; TYPE_3__ sb; TYPE_8__* bdev; int /*<<< orphan*/  partial_stripes_expensive; int /*<<< orphan*/  io_lru; struct io* io; int /*<<< orphan*/  accounting; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  sb_write_mutex; int /*<<< orphan*/  detach; int /*<<< orphan*/  list; } ;
struct TYPE_17__ {TYPE_2__* bd_part; } ;
struct TYPE_16__ {int /*<<< orphan*/  ra_pages; } ;
struct TYPE_15__ {TYPE_5__* queue; } ;
struct TYPE_14__ {TYPE_4__* backing_dev_info; } ;
struct TYPE_13__ {int /*<<< orphan*/  ra_pages; } ;
struct TYPE_11__ {scalar_t__ nr_sects; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCH_CACHED_DEV_STOP_AUTO ; 
 int /*<<< orphan*/  DEFAULT_CACHED_DEV_ERROR_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int RECENT_IO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_9__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bch_cached_dev_ktype ; 
 int /*<<< orphan*/  FUNC6 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cached_dev*) ; 
 struct request_queue* FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  cached_dev_detach_finish ; 
 int /*<<< orphan*/  cached_dev_flush ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static int FUNC17(struct cached_dev *dc, unsigned int block_size)
{
	int ret;
	struct io *io;
	struct request_queue *q = FUNC8(dc->bdev);

	FUNC2(THIS_MODULE);
	FUNC0(&dc->list);
	FUNC9(&dc->disk.cl, NULL);
	FUNC15(&dc->disk.cl, cached_dev_flush, system_wq);
	FUNC11(&dc->disk.kobj, &bch_cached_dev_ktype);
	FUNC1(&dc->detach, cached_dev_detach_finish);
	FUNC14(&dc->sb_write_mutex, 1);
	FUNC0(&dc->io_lru);
	FUNC16(&dc->io_lock);
	FUNC5(&dc->accounting, &dc->disk.cl);

	dc->sequential_cutoff		= 4 << 20;

	for (io = dc->io; io < dc->io + RECENT_IO; io++) {
		FUNC12(&io->lru, &dc->io_lru);
		FUNC10(&io->hash, dc->io_hash + RECENT_IO);
	}

	dc->disk.stripe_size = q->limits.io_opt >> 9;

	if (dc->disk.stripe_size)
		dc->partial_stripes_expensive =
			q->limits.raid_partial_stripes_expensive;

	ret = FUNC4(&dc->disk, block_size,
			 dc->bdev->bd_part->nr_sects - dc->sb.data_offset);
	if (ret)
		return ret;

	dc->disk.disk->queue->backing_dev_info->ra_pages =
		FUNC13(dc->disk.disk->queue->backing_dev_info->ra_pages,
		    q->backing_dev_info->ra_pages);

	FUNC3(&dc->io_errors, 0);
	dc->io_disable = false;
	dc->error_limit = DEFAULT_CACHED_DEV_ERROR_LIMIT;
	/* default to auto */
	dc->stop_when_cache_set_failed = BCH_CACHED_DEV_STOP_AUTO;

	FUNC6(dc);
	FUNC7(dc);
	return 0;
}