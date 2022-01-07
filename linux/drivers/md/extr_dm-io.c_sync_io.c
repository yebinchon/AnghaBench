
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_io {unsigned long error_bits; int wait; } ;
struct io {int vma_invalidate_size; int vma_invalidate_address; struct sync_io* context; int callback; struct dm_io_client* client; int count; scalar_t__ error_bits; } ;
struct dpages {int vma_invalidate_size; int vma_invalidate_address; } ;
struct dm_io_region {int dummy; } ;
struct dm_io_client {int pool; } ;


 int EIO ;
 int GFP_NOIO ;
 int WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int dispatch_io (int,int,unsigned int,struct dm_io_region*,struct dpages*,struct io*,int) ;
 int init_completion (int *) ;
 struct io* mempool_alloc (int *,int ) ;
 int op_is_write (int) ;
 int sync_io_complete ;
 int wait_for_completion_io (int *) ;

__attribute__((used)) static int sync_io(struct dm_io_client *client, unsigned int num_regions,
     struct dm_io_region *where, int op, int op_flags,
     struct dpages *dp, unsigned long *error_bits)
{
 struct io *io;
 struct sync_io sio;

 if (num_regions > 1 && !op_is_write(op)) {
  WARN_ON(1);
  return -EIO;
 }

 init_completion(&sio.wait);

 io = mempool_alloc(&client->pool, GFP_NOIO);
 io->error_bits = 0;
 atomic_set(&io->count, 1);
 io->client = client;
 io->callback = sync_io_complete;
 io->context = &sio;

 io->vma_invalidate_address = dp->vma_invalidate_address;
 io->vma_invalidate_size = dp->vma_invalidate_size;

 dispatch_io(op, op_flags, num_regions, where, dp, io, 1);

 wait_for_completion_io(&sio.wait);

 if (error_bits)
  *error_bits = sio.error_bits;

 return sio.error_bits ? -EIO : 0;
}
