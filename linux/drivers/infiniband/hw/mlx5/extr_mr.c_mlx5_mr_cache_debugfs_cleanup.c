
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * root; } ;
struct mlx5_ib_dev {TYPE_1__ cache; scalar_t__ is_rep; } ;


 int debugfs_remove_recursive (int *) ;
 int mlx5_debugfs_root ;

__attribute__((used)) static void mlx5_mr_cache_debugfs_cleanup(struct mlx5_ib_dev *dev)
{
 if (!mlx5_debugfs_root || dev->is_rep)
  return;

 debugfs_remove_recursive(dev->cache.root);
 dev->cache.root = ((void*)0);
}
