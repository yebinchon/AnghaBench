
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int max_qp_cnt ;
 int mlx5_ib_dealloc_counters (struct mlx5_ib_dev*) ;

__attribute__((used)) static void mlx5_ib_stage_counters_cleanup(struct mlx5_ib_dev *dev)
{
 if (MLX5_CAP_GEN(dev->mdev, max_qp_cnt))
  mlx5_ib_dealloc_counters(dev);
}
