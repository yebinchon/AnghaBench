
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int vma_invalidate_size; int vma_invalidate_address; void* context; int (* callback ) (int,void*) ;struct dm_io_client* client; int count; scalar_t__ error_bits; } ;
struct dpages {int vma_invalidate_size; int vma_invalidate_address; } ;
struct dm_io_region {int dummy; } ;
struct dm_io_client {int pool; } ;
typedef int (* io_notify_fn ) (int,void*) ;


 int EIO ;
 int GFP_NOIO ;
 int WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int dispatch_io (int,int,unsigned int,struct dm_io_region*,struct dpages*,struct io*,int ) ;
 struct io* mempool_alloc (int *,int ) ;
 int op_is_write (int) ;

__attribute__((used)) static int async_io(struct dm_io_client *client, unsigned int num_regions,
      struct dm_io_region *where, int op, int op_flags,
      struct dpages *dp, io_notify_fn fn, void *context)
{
 struct io *io;

 if (num_regions > 1 && !op_is_write(op)) {
  WARN_ON(1);
  fn(1, context);
  return -EIO;
 }

 io = mempool_alloc(&client->pool, GFP_NOIO);
 io->error_bits = 0;
 atomic_set(&io->count, 1);
 io->client = client;
 io->callback = fn;
 io->context = context;

 io->vma_invalidate_address = dp->vma_invalidate_address;
 io->vma_invalidate_size = dp->vma_invalidate_size;

 dispatch_io(op, op_flags, num_regions, where, dp, io, 0);
 return 0;
}
