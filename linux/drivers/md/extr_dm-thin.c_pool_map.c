
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_c {TYPE_1__* data_dev; struct pool* pool; } ;
struct pool {int lock; } ;
struct dm_target {struct pool_c* private; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int bdev; } ;


 int DM_MAPIO_REMAPPED ;
 int bio_set_dev (struct bio*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pool_map(struct dm_target *ti, struct bio *bio)
{
 int r;
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;
 unsigned long flags;




 spin_lock_irqsave(&pool->lock, flags);
 bio_set_dev(bio, pt->data_dev->bdev);
 r = DM_MAPIO_REMAPPED;
 spin_unlock_irqrestore(&pool->lock, flags);

 return r;
}
