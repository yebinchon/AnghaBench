
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_dev {int mdev; } ;


 int EPERM ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_MKEY_MASK_A ;
 int MLX5_MKEY_MASK_PAGE_SIZE ;
 int umr_modify_atomic_disabled ;
 int umr_modify_entity_size_disabled ;

__attribute__((used)) static int umr_check_mkey_mask(struct mlx5_ib_dev *dev, u64 mask)
{
 if ((mask & MLX5_MKEY_MASK_PAGE_SIZE &&
      MLX5_CAP_GEN(dev->mdev, umr_modify_entity_size_disabled)) ||
     (mask & MLX5_MKEY_MASK_A &&
      MLX5_CAP_GEN(dev->mdev, umr_modify_atomic_disabled)))
  return -EPERM;
 return 0;
}
