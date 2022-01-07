
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpages {int dummy; } ;
struct TYPE_2__ {int context; int fn; } ;
struct dm_io_request {TYPE_1__ notify; int bi_op_flags; int bi_op; int client; } ;
struct dm_io_region {scalar_t__ count; } ;


 unsigned long SECTOR_SHIFT ;
 int async_io (int ,unsigned int,struct dm_io_region*,int ,int ,struct dpages*,int ,int ) ;
 int dp_init (struct dm_io_request*,struct dpages*,unsigned long) ;
 int sync_io (int ,unsigned int,struct dm_io_region*,int ,int ,struct dpages*,unsigned long*) ;

int dm_io(struct dm_io_request *io_req, unsigned num_regions,
   struct dm_io_region *where, unsigned long *sync_error_bits)
{
 int r;
 struct dpages dp;

 r = dp_init(io_req, &dp, (unsigned long)where->count << SECTOR_SHIFT);
 if (r)
  return r;

 if (!io_req->notify.fn)
  return sync_io(io_req->client, num_regions, where,
          io_req->bi_op, io_req->bi_op_flags, &dp,
          sync_error_bits);

 return async_io(io_req->client, num_regions, where, io_req->bi_op,
   io_req->bi_op_flags, &dp, io_req->notify.fn,
   io_req->notify.context);
}
