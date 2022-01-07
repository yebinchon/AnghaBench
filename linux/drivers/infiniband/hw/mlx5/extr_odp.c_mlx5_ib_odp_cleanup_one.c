
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int general_caps; } ;
struct mlx5_ib_dev {int odp_pf_eq; TYPE_1__ odp_caps; } ;


 int IB_ODP_SUPPORT ;
 int mlx5_ib_destroy_pf_eq (struct mlx5_ib_dev*,int *) ;

void mlx5_ib_odp_cleanup_one(struct mlx5_ib_dev *dev)
{
 if (!(dev->odp_caps.general_caps & IB_ODP_SUPPORT))
  return;

 mlx5_ib_destroy_pf_eq(dev, &dev->odp_pf_eq);
}
