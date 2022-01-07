
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_device_attr {int dummy; } ;


 int MLX5_CAP_ATOMIC (int ,int ) ;
 int atomic_size_dc ;
 int get_atomic_caps (struct mlx5_ib_dev*,int ,struct ib_device_attr*) ;

__attribute__((used)) static void get_atomic_caps_dc(struct mlx5_ib_dev *dev,
          struct ib_device_attr *props)
{
 u8 atomic_size_qp = MLX5_CAP_ATOMIC(dev->mdev, atomic_size_dc);

 get_atomic_caps(dev, atomic_size_qp, props);
}
