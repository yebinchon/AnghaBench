
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_MAX_UMR_SHIFT ;
 int MR_CACHE_LAST_STD_ENTRY ;
 int umr_extended_translation_offset ;

__attribute__((used)) static int mr_cache_max_order(struct mlx5_ib_dev *dev)
{
 if (MLX5_CAP_GEN(dev->mdev, umr_extended_translation_offset))
  return MR_CACHE_LAST_STD_ENTRY + 2;
 return MLX5_MAX_UMR_SHIFT;
}
