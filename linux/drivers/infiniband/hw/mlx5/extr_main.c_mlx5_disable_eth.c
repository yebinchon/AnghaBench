
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int mlx5_eth_lag_cleanup (struct mlx5_ib_dev*) ;
 int mlx5_nic_vport_disable_roce (int ) ;
 int roce ;

__attribute__((used)) static void mlx5_disable_eth(struct mlx5_ib_dev *dev)
{
 mlx5_eth_lag_cleanup(dev);
 if (MLX5_CAP_GEN(dev->mdev, roce))
  mlx5_nic_vport_disable_roce(dev->mdev);
}
