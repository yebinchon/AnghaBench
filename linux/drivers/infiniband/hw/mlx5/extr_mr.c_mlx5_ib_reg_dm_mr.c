
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_dm {int type; scalar_t__ dev_addr; } ;
struct mlx5_core_dev {int pdev; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;
struct ib_dm_mr_attr {int access_flags; int length; scalar_t__ offset; } ;
struct ib_dm {int device; } ;
struct TYPE_2__ {struct mlx5_core_dev* mdev; } ;


 int EINVAL ;
 struct ib_mr* ERR_PTR (int ) ;
 int MLX5_IB_DM_MEMIC_ALLOWED_ACCESS ;
 int MLX5_IB_DM_SW_ICM_ALLOWED_ACCESS ;



 int MLX5_MKC_ACCESS_MODE_MEMIC ;
 int MLX5_MKC_ACCESS_MODE_SW_ICM ;
 struct ib_mr* mlx5_ib_get_dm_mr (struct ib_pd*,scalar_t__,int ,int,int) ;
 scalar_t__ pci_resource_start (int ,int ) ;
 TYPE_1__* to_mdev (int ) ;
 struct mlx5_ib_dm* to_mdm (struct ib_dm*) ;

struct ib_mr *mlx5_ib_reg_dm_mr(struct ib_pd *pd, struct ib_dm *dm,
    struct ib_dm_mr_attr *attr,
    struct uverbs_attr_bundle *attrs)
{
 struct mlx5_ib_dm *mdm = to_mdm(dm);
 struct mlx5_core_dev *dev = to_mdev(dm->device)->mdev;
 u64 start_addr = mdm->dev_addr + attr->offset;
 int mode;

 switch (mdm->type) {
 case 129:
  if (attr->access_flags & ~MLX5_IB_DM_MEMIC_ALLOWED_ACCESS)
   return ERR_PTR(-EINVAL);

  mode = MLX5_MKC_ACCESS_MODE_MEMIC;
  start_addr -= pci_resource_start(dev->pdev, 0);
  break;
 case 128:
 case 130:
  if (attr->access_flags & ~MLX5_IB_DM_SW_ICM_ALLOWED_ACCESS)
   return ERR_PTR(-EINVAL);

  mode = MLX5_MKC_ACCESS_MODE_SW_ICM;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 return mlx5_ib_get_dm_mr(pd, start_addr, attr->length,
     attr->access_flags, mode);
}
