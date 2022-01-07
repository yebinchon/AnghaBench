
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mr_cache {int wq; scalar_t__ last_add; struct mlx5_cache_ent* ent; scalar_t__ stopped; } ;
struct mlx5_ib_dev {int fill_delay; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int dwork; int work; int order; struct mlx5_ib_dev* dev; } ;


 int EAGAIN ;
 int HZ ;
 int add_keys (struct mlx5_ib_dev*,int,int) ;
 int jiffies ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int,int) ;
 int msecs_to_jiffies (int) ;
 int need_resched () ;
 int order2idx (struct mlx5_ib_dev*,int ) ;
 int queue_delayed_work (int ,int *,int) ;
 int queue_work (int ,int *) ;
 int remove_keys (struct mlx5_ib_dev*,int,int) ;
 int someone_adding (struct mlx5_mr_cache*) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void __cache_work_func(struct mlx5_cache_ent *ent)
{
 struct mlx5_ib_dev *dev = ent->dev;
 struct mlx5_mr_cache *cache = &dev->cache;
 int i = order2idx(dev, ent->order);
 int err;

 if (cache->stopped)
  return;

 ent = &dev->cache.ent[i];
 if (ent->cur < 2 * ent->limit && !dev->fill_delay) {
  err = add_keys(dev, i, 1);
  if (ent->cur < 2 * ent->limit) {
   if (err == -EAGAIN) {
    mlx5_ib_dbg(dev, "returned eagain, order %d\n",
         i + 2);
    queue_delayed_work(cache->wq, &ent->dwork,
         msecs_to_jiffies(3));
   } else if (err) {
    mlx5_ib_warn(dev, "command failed order %d, err %d\n",
          i + 2, err);
    queue_delayed_work(cache->wq, &ent->dwork,
         msecs_to_jiffies(1000));
   } else {
    queue_work(cache->wq, &ent->work);
   }
  }
 } else if (ent->cur > 2 * ent->limit) {
  if (!need_resched() && !someone_adding(cache) &&
      time_after(jiffies, cache->last_add + 300 * HZ)) {
   remove_keys(dev, i, 1);
   if (ent->cur > ent->limit)
    queue_work(cache->wq, &ent->work);
  } else {
   queue_delayed_work(cache->wq, &ent->dwork, 300 * HZ);
  }
 }
}
