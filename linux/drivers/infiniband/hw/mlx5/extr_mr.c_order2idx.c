
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_mr_cache {TYPE_1__* ent; } ;
struct mlx5_ib_dev {struct mlx5_mr_cache cache; } ;
struct TYPE_2__ {int order; } ;



__attribute__((used)) static int order2idx(struct mlx5_ib_dev *dev, int order)
{
 struct mlx5_mr_cache *cache = &dev->cache;

 if (order < cache->ent[0].order)
  return 0;
 else
  return order - cache->ent[0].order;
}
