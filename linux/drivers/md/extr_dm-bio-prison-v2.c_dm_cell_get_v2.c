
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_v2 {int lock; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct bio {int dummy; } ;


 int __get (struct dm_bio_prison_v2*,struct dm_cell_key_v2*,unsigned int,struct bio*,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool dm_cell_get_v2(struct dm_bio_prison_v2 *prison,
      struct dm_cell_key_v2 *key,
      unsigned lock_level,
      struct bio *inmate,
      struct dm_bio_prison_cell_v2 *cell_prealloc,
      struct dm_bio_prison_cell_v2 **cell_result)
{
 int r;
 unsigned long flags;

 spin_lock_irqsave(&prison->lock, flags);
 r = __get(prison, key, lock_level, inmate, cell_prealloc, cell_result);
 spin_unlock_irqrestore(&prison->lock, flags);

 return r;
}
