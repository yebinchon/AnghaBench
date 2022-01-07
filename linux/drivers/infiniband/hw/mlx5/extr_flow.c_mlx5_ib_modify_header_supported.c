
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_FLOWTABLE_NIC_RX (int ,int ) ;
 scalar_t__ MLX5_CAP_FLOWTABLE_NIC_TX (int ,int ) ;
 int max_modify_header_actions ;

__attribute__((used)) static bool mlx5_ib_modify_header_supported(struct mlx5_ib_dev *dev)
{
 return MLX5_CAP_FLOWTABLE_NIC_RX(dev->mdev,
      max_modify_header_actions) ||
        MLX5_CAP_FLOWTABLE_NIC_TX(dev->mdev, max_modify_header_actions);
}
