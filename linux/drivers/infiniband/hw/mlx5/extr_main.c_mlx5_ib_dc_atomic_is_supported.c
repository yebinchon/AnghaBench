
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct ib_device_attr {scalar_t__ atomic_cap; } ;


 scalar_t__ IB_ATOMIC_HCA ;
 int get_atomic_caps_dc (struct mlx5_ib_dev*,struct ib_device_attr*) ;

bool mlx5_ib_dc_atomic_is_supported(struct mlx5_ib_dev *dev)
{
 struct ib_device_attr props = {};

 get_atomic_caps_dc(dev, &props);
 return (props.atomic_cap == IB_ATOMIC_HCA) ? 1 : 0;
}
