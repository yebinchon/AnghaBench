
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mr_cache {int wq; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_mr {int allocated_from_cache; int list; int order; } ;
struct mlx5_ib_dev {struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int work; int lock; int head; } ;


 int MAX_MR_CACHE_ENTRIES ;
 int WARN_ON (int) ;
 int destroy_mkey (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int list_add_tail (int *,int *) ;
 int order2idx (struct mlx5_ib_dev*,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unreg_umr (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;

void mlx5_mr_cache_free(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
 struct mlx5_mr_cache *cache = &dev->cache;
 struct mlx5_cache_ent *ent;
 int shrink = 0;
 int c;

 if (!mr->allocated_from_cache)
  return;

 c = order2idx(dev, mr->order);
 WARN_ON(c < 0 || c >= MAX_MR_CACHE_ENTRIES);

 if (unreg_umr(dev, mr)) {
  mr->allocated_from_cache = 0;
  destroy_mkey(dev, mr);
  ent = &cache->ent[c];
  if (ent->cur < ent->limit)
   queue_work(cache->wq, &ent->work);
  return;
 }

 ent = &cache->ent[c];
 spin_lock_irq(&ent->lock);
 list_add_tail(&mr->list, &ent->head);
 ent->cur++;
 if (ent->cur > 2 * ent->limit)
  shrink = 1;
 spin_unlock_irq(&ent->lock);

 if (shrink)
  queue_work(cache->wq, &ent->work);
}
