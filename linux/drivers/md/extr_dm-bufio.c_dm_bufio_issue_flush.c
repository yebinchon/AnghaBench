
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * addr; } ;
struct TYPE_4__ {TYPE_1__ ptr; int type; } ;
struct dm_io_request {int bi_op_flags; int client; TYPE_2__ mem; int bi_op; } ;
struct dm_io_region {int count; int sector; int bdev; } ;
struct dm_bufio_client {int bdev; int dm_io; } ;


 int BUG_ON (int ) ;
 int DM_IO_KMEM ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int dm_bufio_in_request () ;
 int dm_io (struct dm_io_request*,int,struct dm_io_region*,int *) ;

int dm_bufio_issue_flush(struct dm_bufio_client *c)
{
 struct dm_io_request io_req = {
  .bi_op = REQ_OP_WRITE,
  .bi_op_flags = REQ_PREFLUSH | REQ_SYNC,
  .mem.type = DM_IO_KMEM,
  .mem.ptr.addr = ((void*)0),
  .client = c->dm_io,
 };
 struct dm_io_region io_reg = {
  .bdev = c->bdev,
  .sector = 0,
  .count = 0,
 };

 BUG_ON(dm_bufio_in_request());

 return dm_io(&io_req, 1, &io_reg, ((void*)0));
}
