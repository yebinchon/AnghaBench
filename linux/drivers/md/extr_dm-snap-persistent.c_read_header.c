
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pstore {TYPE_2__* store; void* version; void* valid; struct disk_header* header_area; int io_client; } ;
struct disk_header {int chunk_size; int version; int valid; int magic; } ;
struct TYPE_4__ {int chunk_size; int chunk_mask; int chunk_shift; int snap; } ;
struct TYPE_3__ {int bdev; } ;


 int DMERR (char*,unsigned int,char*) ;
 int DMWARN (char*,...) ;
 int DM_CHUNK_SIZE_DEFAULT_SECTORS ;
 int ENXIO ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REQ_OP_READ ;
 void* SNAP_MAGIC ;
 int __ffs (int) ;
 int alloc_area (struct pstore*) ;
 int bdev_logical_block_size (int ) ;
 int chunk_io (struct pstore*,struct disk_header*,int ,int ,int ,int) ;
 int dm_exception_store_set_chunk_size (TYPE_2__*,unsigned int,char**) ;
 int dm_io_client_create () ;
 TYPE_1__* dm_snap_cow (int ) ;
 int free_area (struct pstore*) ;
 void* le32_to_cpu (int ) ;
 int max (int ,int) ;

__attribute__((used)) static int read_header(struct pstore *ps, int *new_snapshot)
{
 int r;
 struct disk_header *dh;
 unsigned chunk_size;
 int chunk_size_supplied = 1;
 char *chunk_err;





 if (!ps->store->chunk_size) {
  ps->store->chunk_size = max(DM_CHUNK_SIZE_DEFAULT_SECTORS,
      bdev_logical_block_size(dm_snap_cow(ps->store->snap)->
         bdev) >> 9);
  ps->store->chunk_mask = ps->store->chunk_size - 1;
  ps->store->chunk_shift = __ffs(ps->store->chunk_size);
  chunk_size_supplied = 0;
 }

 ps->io_client = dm_io_client_create();
 if (IS_ERR(ps->io_client))
  return PTR_ERR(ps->io_client);

 r = alloc_area(ps);
 if (r)
  return r;

 r = chunk_io(ps, ps->header_area, 0, REQ_OP_READ, 0, 1);
 if (r)
  goto bad;

 dh = ps->header_area;

 if (le32_to_cpu(dh->magic) == 0) {
  *new_snapshot = 1;
  return 0;
 }

 if (le32_to_cpu(dh->magic) != SNAP_MAGIC) {
  DMWARN("Invalid or corrupt snapshot");
  r = -ENXIO;
  goto bad;
 }

 *new_snapshot = 0;
 ps->valid = le32_to_cpu(dh->valid);
 ps->version = le32_to_cpu(dh->version);
 chunk_size = le32_to_cpu(dh->chunk_size);

 if (ps->store->chunk_size == chunk_size)
  return 0;

 if (chunk_size_supplied)
  DMWARN("chunk size %u in device metadata overrides "
         "table chunk size of %u.",
         chunk_size, ps->store->chunk_size);


 free_area(ps);

 r = dm_exception_store_set_chunk_size(ps->store, chunk_size,
           &chunk_err);
 if (r) {
  DMERR("invalid on-disk chunk size %u: %s.",
        chunk_size, chunk_err);
  return r;
 }

 r = alloc_area(ps);
 return r;

bad:
 free_area(ps);
 return r;
}
