
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dm_writecache {int dm_io; } ;
struct TYPE_6__ {int * fn; } ;
struct TYPE_4__ {int * addr; } ;
struct TYPE_5__ {TYPE_1__ ptr; int type; } ;
struct dm_io_request {TYPE_3__ notify; int client; TYPE_2__ mem; int bi_op_flags; int bi_op; } ;
struct dm_io_region {scalar_t__ count; scalar_t__ sector; int bdev; } ;
struct dm_dev {int bdev; } ;


 int DM_IO_KMEM ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int dm_io (struct dm_io_request*,int,struct dm_io_region*,int *) ;
 scalar_t__ unlikely (int) ;
 int writecache_error (struct dm_writecache*,int,char*,int) ;

__attribute__((used)) static void writecache_disk_flush(struct dm_writecache *wc, struct dm_dev *dev)
{
 int r;
 struct dm_io_region region;
 struct dm_io_request req;

 region.bdev = dev->bdev;
 region.sector = 0;
 region.count = 0;
 req.bi_op = REQ_OP_WRITE;
 req.bi_op_flags = REQ_PREFLUSH;
 req.mem.type = DM_IO_KMEM;
 req.mem.ptr.addr = ((void*)0);
 req.client = wc->dm_io;
 req.notify.fn = ((void*)0);

 r = dm_io(&req, 1, &region, ((void*)0));
 if (unlikely(r))
  writecache_error(wc, r, "error flushing metadata: %d", r);
}
