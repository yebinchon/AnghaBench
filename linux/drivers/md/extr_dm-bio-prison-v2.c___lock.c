
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_v2 {int dummy; } ;
struct dm_bio_prison_cell_v2 {int exclusive_lock; unsigned int exclusive_level; scalar_t__ shared_count; } ;


 int EBUSY ;
 scalar_t__ __find_or_insert (struct dm_bio_prison_v2*,struct dm_cell_key_v2*,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ;

__attribute__((used)) static int __lock(struct dm_bio_prison_v2 *prison,
    struct dm_cell_key_v2 *key,
    unsigned lock_level,
    struct dm_bio_prison_cell_v2 *cell_prealloc,
    struct dm_bio_prison_cell_v2 **cell_result)
{
 struct dm_bio_prison_cell_v2 *cell;

 if (__find_or_insert(prison, key, cell_prealloc, &cell)) {
  if (cell->exclusive_lock)
   return -EBUSY;

  cell->exclusive_lock = 1;
  cell->exclusive_level = lock_level;
  *cell_result = cell;



  return cell->shared_count > 0;

 } else {
  cell = cell_prealloc;
  cell->shared_count = 0;
  cell->exclusive_lock = 1;
  cell->exclusive_level = lock_level;
  *cell_result = cell;
 }

 return 0;
}
