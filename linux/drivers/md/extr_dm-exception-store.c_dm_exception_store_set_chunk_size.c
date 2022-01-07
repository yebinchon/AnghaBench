
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_exception_store {unsigned int chunk_size; unsigned int chunk_mask; int chunk_shift; int snap; } ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int bdev; } ;


 int EINVAL ;
 unsigned int INT_MAX ;
 int SECTOR_SHIFT ;
 int __ffs (unsigned int) ;
 int bdev_logical_block_size (int ) ;
 TYPE_2__* dm_snap_cow (int ) ;
 TYPE_1__* dm_snap_origin (int ) ;
 int is_power_of_2 (unsigned int) ;

int dm_exception_store_set_chunk_size(struct dm_exception_store *store,
          unsigned chunk_size,
          char **error)
{

 if (!is_power_of_2(chunk_size)) {
  *error = "Chunk size is not a power of 2";
  return -EINVAL;
 }


 if (chunk_size %
     (bdev_logical_block_size(dm_snap_cow(store->snap)->bdev) >> 9) ||
     chunk_size %
     (bdev_logical_block_size(dm_snap_origin(store->snap)->bdev) >> 9)) {
  *error = "Chunk size is not a multiple of device blocksize";
  return -EINVAL;
 }

 if (chunk_size > INT_MAX >> SECTOR_SHIFT) {
  *error = "Chunk size is too high";
  return -EINVAL;
 }

 store->chunk_size = chunk_size;
 store->chunk_mask = chunk_size - 1;
 store->chunk_shift = __ffs(chunk_size);

 return 0;
}
