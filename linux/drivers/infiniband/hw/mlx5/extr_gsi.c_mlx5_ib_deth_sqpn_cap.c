
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int set_deth_sqpn ;

__attribute__((used)) static bool mlx5_ib_deth_sqpn_cap(struct mlx5_ib_dev *dev)
{
 return MLX5_CAP_GEN(dev->mdev, set_deth_sqpn);
}
