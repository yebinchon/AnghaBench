
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ mlx5_core_native_port_num (int ) ;
 int mlx5_ib_cleanup_cong_debugfs (struct mlx5_ib_dev*,scalar_t__) ;

__attribute__((used)) static void mlx5_ib_stage_cong_debugfs_cleanup(struct mlx5_ib_dev *dev)
{
 mlx5_ib_cleanup_cong_debugfs(dev,
         mlx5_core_native_port_num(dev->mdev) - 1);
}
