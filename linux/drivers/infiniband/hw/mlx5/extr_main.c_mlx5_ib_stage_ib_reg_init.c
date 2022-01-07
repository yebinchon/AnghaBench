
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int ib_dev; int mdev; } ;


 int ib_register_device (int *,char const*) ;
 int mlx5_attr_group ;
 int mlx5_lag_is_roce (int ) ;
 int rdma_set_device_sysfs_group (int *,int *) ;

__attribute__((used)) static int mlx5_ib_stage_ib_reg_init(struct mlx5_ib_dev *dev)
{
 const char *name;

 rdma_set_device_sysfs_group(&dev->ib_dev, &mlx5_attr_group);
 if (!mlx5_lag_is_roce(dev->mdev))
  name = "mlx5_%d";
 else
  name = "mlx5_bond_%d";
 return ib_register_device(&dev->ib_dev, name);
}
