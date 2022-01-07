
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct ib_device {int dummy; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int log_max_uctx ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static bool devx_is_supported(struct ib_device *device)
{
 struct mlx5_ib_dev *dev = to_mdev(device);

 return MLX5_CAP_GEN(dev->mdev, log_max_uctx);
}
