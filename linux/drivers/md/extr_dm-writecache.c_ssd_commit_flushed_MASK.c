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
struct io_notify {int /*<<< orphan*/  c; int /*<<< orphan*/  count; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; struct dm_writecache* member_0; } ;
struct dm_writecache {int dirty_bitmap_size; size_t metadata_sectors; int /*<<< orphan*/  dirty_bitmap; TYPE_4__* ssd_dev; int /*<<< orphan*/  dm_io; scalar_t__ memory_map; scalar_t__ start_sector; } ;
struct TYPE_7__ {struct io_notify* context; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ,struct io_notify*) ;} ;
struct TYPE_5__ {char* vma; } ;
struct TYPE_6__ {TYPE_1__ ptr; int /*<<< orphan*/  type; } ;
struct dm_io_request {TYPE_3__ notify; int /*<<< orphan*/  client; TYPE_2__ mem; int /*<<< orphan*/  bi_op_flags; int /*<<< orphan*/  bi_op; } ;
struct dm_io_region {size_t sector; size_t count; int /*<<< orphan*/  bdev; } ;
typedef  size_t sector_t ;
struct TYPE_8__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t BITMAP_GRANULARITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DM_IO_VMA ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 size_t SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_io_request*,int,struct dm_io_region*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_writecache*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct io_notify*) ; 

__attribute__((used)) static void FUNC11(struct dm_writecache *wc)
{
	struct dm_io_region region;
	struct dm_io_request req;
	struct io_notify endio = {
		wc,
		FUNC1(endio.c),
		FUNC0(1),
	};
	unsigned bitmap_bits = wc->dirty_bitmap_size * 8;
	unsigned i = 0;

	while (1) {
		unsigned j;
		i = FUNC4(wc->dirty_bitmap, bitmap_bits, i);
		if (FUNC7(i == bitmap_bits))
			break;
		j = FUNC5(wc->dirty_bitmap, bitmap_bits, i);

		region.bdev = wc->ssd_dev->bdev;
		region.sector = (sector_t)i * (BITMAP_GRANULARITY >> SECTOR_SHIFT);
		region.count = (sector_t)(j - i) * (BITMAP_GRANULARITY >> SECTOR_SHIFT);

		if (FUNC7(region.sector >= wc->metadata_sectors))
			break;
		if (FUNC7(region.sector + region.count > wc->metadata_sectors))
			region.count = wc->metadata_sectors - region.sector;

		region.sector += wc->start_sector;
		FUNC2(&endio.count);
		req.bi_op = REQ_OP_WRITE;
		req.bi_op_flags = REQ_SYNC;
		req.mem.type = DM_IO_VMA;
		req.mem.ptr.vma = (char *)wc->memory_map + (size_t)i * BITMAP_GRANULARITY;
		req.client = wc->dm_io;
		req.notify.fn = writecache_notify_io;
		req.notify.context = &endio;

		/* writing via async dm-io (implied by notify.fn above) won't return an error */
	        (void) FUNC3(&req, 1, &region, NULL);
		i = j;
	}

	FUNC10(0, &endio);
	FUNC8(&endio.c);

	FUNC9(wc, wc->ssd_dev);

	FUNC6(wc->dirty_bitmap, 0, wc->dirty_bitmap_size);
}