
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct io_notify {int c; int count; int member_2; int member_1; struct dm_writecache* member_0; } ;
struct dm_writecache {int dirty_bitmap_size; size_t metadata_sectors; int dirty_bitmap; TYPE_4__* ssd_dev; int dm_io; scalar_t__ memory_map; scalar_t__ start_sector; } ;
struct TYPE_7__ {struct io_notify* context; int (* fn ) (int ,struct io_notify*) ;} ;
struct TYPE_5__ {char* vma; } ;
struct TYPE_6__ {TYPE_1__ ptr; int type; } ;
struct dm_io_request {TYPE_3__ notify; int client; TYPE_2__ mem; int bi_op_flags; int bi_op; } ;
struct dm_io_region {size_t sector; size_t count; int bdev; } ;
typedef size_t sector_t ;
struct TYPE_8__ {int bdev; } ;


 int ATOMIC_INIT (int) ;
 size_t BITMAP_GRANULARITY ;
 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int DM_IO_VMA ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 size_t SECTOR_SHIFT ;
 int atomic_inc (int *) ;
 int dm_io (struct dm_io_request*,int,struct dm_io_region*,int *) ;
 unsigned int find_next_bit (int ,unsigned int,unsigned int) ;
 unsigned int find_next_zero_bit (int ,unsigned int,unsigned int) ;
 int memset (int ,int ,int) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion_io (int *) ;
 int writecache_disk_flush (struct dm_writecache*,TYPE_4__*) ;
 int writecache_notify_io (int ,struct io_notify*) ;

__attribute__((used)) static void ssd_commit_flushed(struct dm_writecache *wc)
{
 struct dm_io_region region;
 struct dm_io_request req;
 struct io_notify endio = {
  wc,
  COMPLETION_INITIALIZER_ONSTACK(endio.c),
  ATOMIC_INIT(1),
 };
 unsigned bitmap_bits = wc->dirty_bitmap_size * 8;
 unsigned i = 0;

 while (1) {
  unsigned j;
  i = find_next_bit(wc->dirty_bitmap, bitmap_bits, i);
  if (unlikely(i == bitmap_bits))
   break;
  j = find_next_zero_bit(wc->dirty_bitmap, bitmap_bits, i);

  region.bdev = wc->ssd_dev->bdev;
  region.sector = (sector_t)i * (BITMAP_GRANULARITY >> SECTOR_SHIFT);
  region.count = (sector_t)(j - i) * (BITMAP_GRANULARITY >> SECTOR_SHIFT);

  if (unlikely(region.sector >= wc->metadata_sectors))
   break;
  if (unlikely(region.sector + region.count > wc->metadata_sectors))
   region.count = wc->metadata_sectors - region.sector;

  region.sector += wc->start_sector;
  atomic_inc(&endio.count);
  req.bi_op = REQ_OP_WRITE;
  req.bi_op_flags = REQ_SYNC;
  req.mem.type = DM_IO_VMA;
  req.mem.ptr.vma = (char *)wc->memory_map + (size_t)i * BITMAP_GRANULARITY;
  req.client = wc->dm_io;
  req.notify.fn = writecache_notify_io;
  req.notify.context = &endio;


         (void) dm_io(&req, 1, &region, ((void*)0));
  i = j;
 }

 writecache_notify_io(0, &endio);
 wait_for_completion_io(&endio.c);

 writecache_disk_flush(wc, wc->ssd_dev);

 memset(wc->dirty_bitmap, 0, wc->dirty_bitmap_size);
}
