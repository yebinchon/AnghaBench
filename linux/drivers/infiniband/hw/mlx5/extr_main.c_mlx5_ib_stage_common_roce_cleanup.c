
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ mlx5_core_native_port_num (int ) ;
 int mlx5_remove_netdev_notifier (struct mlx5_ib_dev*,scalar_t__) ;

__attribute__((used)) static void mlx5_ib_stage_common_roce_cleanup(struct mlx5_ib_dev *dev)
{
 u8 port_num = mlx5_core_native_port_num(dev->mdev) - 1;

 mlx5_remove_netdev_notifier(dev, port_num);
}
