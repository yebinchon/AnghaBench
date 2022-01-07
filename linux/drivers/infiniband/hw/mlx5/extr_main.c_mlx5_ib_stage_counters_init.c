
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int ib_dev; int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int ib_set_device_ops (int *,int *) ;
 int max_qp_cnt ;
 int mlx5_ib_alloc_counters (struct mlx5_ib_dev*) ;
 int mlx5_ib_dev_hw_stats_ops ;

__attribute__((used)) static int mlx5_ib_stage_counters_init(struct mlx5_ib_dev *dev)
{
 if (MLX5_CAP_GEN(dev->mdev, max_qp_cnt)) {
  ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_hw_stats_ops);

  return mlx5_ib_alloc_counters(dev);
 }

 return 0;
}
