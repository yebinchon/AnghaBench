
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int mlx5_eth_lag_init (struct mlx5_ib_dev*) ;
 int mlx5_nic_vport_disable_roce (int ) ;
 int mlx5_nic_vport_enable_roce (int ) ;
 int roce ;

__attribute__((used)) static int mlx5_enable_eth(struct mlx5_ib_dev *dev)
{
 int err;

 if (MLX5_CAP_GEN(dev->mdev, roce)) {
  err = mlx5_nic_vport_enable_roce(dev->mdev);
  if (err)
   return err;
 }

 err = mlx5_eth_lag_init(dev);
 if (err)
  goto err_disable_roce;

 return 0;

err_disable_roce:
 if (MLX5_CAP_GEN(dev->mdev, roce))
  mlx5_nic_vport_disable_roce(dev->mdev);

 return err;
}
