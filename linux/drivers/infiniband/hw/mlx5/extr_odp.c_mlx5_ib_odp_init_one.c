
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int general_caps; } ;
struct mlx5_ib_dev {int odp_pf_eq; int null_mkey; int mdev; TYPE_1__ odp_caps; int ib_dev; } ;


 int IB_ODP_SUPPORT ;
 int IB_ODP_SUPPORT_IMPLICIT ;
 int ib_set_device_ops (int *,int *) ;
 int mlx5_cmd_null_mkey (int ,int *) ;
 int mlx5_ib_create_pf_eq (struct mlx5_ib_dev*,int *) ;
 int mlx5_ib_dev_odp_ops ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int) ;

int mlx5_ib_odp_init_one(struct mlx5_ib_dev *dev)
{
 int ret = 0;

 if (!(dev->odp_caps.general_caps & IB_ODP_SUPPORT))
  return ret;

 ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_odp_ops);

 if (dev->odp_caps.general_caps & IB_ODP_SUPPORT_IMPLICIT) {
  ret = mlx5_cmd_null_mkey(dev->mdev, &dev->null_mkey);
  if (ret) {
   mlx5_ib_err(dev, "Error getting null_mkey %d\n", ret);
   return ret;
  }
 }

 ret = mlx5_ib_create_pf_eq(dev, &dev->odp_pf_eq);

 return ret;
}
