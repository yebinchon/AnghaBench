
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memic_alloc_pages; } ;
struct mlx5_ib_dev {TYPE_1__ dm; int mr_srcu; } ;


 int CONFIG_INFINIBAND_ON_DEMAND_PAGING ;
 scalar_t__ IS_ENABLED (int ) ;
 int MLX5_MAX_MEMIC_PAGES ;
 int WARN_ON (int) ;
 int bitmap_empty (int ,int ) ;
 int cleanup_srcu_struct (int *) ;
 int mlx5_ib_cleanup_multiport_master (struct mlx5_ib_dev*) ;
 int srcu_barrier (int *) ;

__attribute__((used)) static void mlx5_ib_stage_init_cleanup(struct mlx5_ib_dev *dev)
{
 mlx5_ib_cleanup_multiport_master(dev);
 if (IS_ENABLED(CONFIG_INFINIBAND_ON_DEMAND_PAGING)) {
  srcu_barrier(&dev->mr_srcu);
  cleanup_srcu_struct(&dev->mr_srcu);
 }

 WARN_ON(!bitmap_empty(dev->dm.memic_alloc_pages, MLX5_MAX_MEMIC_PAGES));
}
