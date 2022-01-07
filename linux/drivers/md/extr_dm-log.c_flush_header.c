
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bi_op_flags; int bi_op; } ;
struct TYPE_3__ {int bdev; } ;
struct log_c {TYPE_2__ io_req; TYPE_1__ header_location; } ;
struct dm_io_region {int count; int sector; int bdev; } ;


 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int dm_io (TYPE_2__*,int,struct dm_io_region*,int *) ;

__attribute__((used)) static int flush_header(struct log_c *lc)
{
 struct dm_io_region null_location = {
  .bdev = lc->header_location.bdev,
  .sector = 0,
  .count = 0,
 };

 lc->io_req.bi_op = REQ_OP_WRITE;
 lc->io_req.bi_op_flags = REQ_PREFLUSH;

 return dm_io(&lc->io_req, 1, &null_location, ((void*)0));
}
