
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison {int cells; int cell_pool; int lock; } ;


 int GFP_KERNEL ;
 int MIN_CELLS ;
 int RB_ROOT ;
 int _cell_cache ;
 int kfree (struct dm_bio_prison*) ;
 struct dm_bio_prison* kzalloc (int,int ) ;
 int mempool_init_slab_pool (int *,int ,int ) ;
 int spin_lock_init (int *) ;

struct dm_bio_prison *dm_bio_prison_create(void)
{
 struct dm_bio_prison *prison = kzalloc(sizeof(*prison), GFP_KERNEL);
 int ret;

 if (!prison)
  return ((void*)0);

 spin_lock_init(&prison->lock);

 ret = mempool_init_slab_pool(&prison->cell_pool, MIN_CELLS, _cell_cache);
 if (ret) {
  kfree(prison);
  return ((void*)0);
 }

 prison->cells = RB_ROOT;

 return prison;
}
