
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int umr_indirect_mkey_disabled ;

__attribute__((used)) static bool umr_can_use_indirect_mkey(struct mlx5_ib_dev *dev)
{
 return !MLX5_CAP_GEN(dev->mdev, umr_indirect_mkey_disabled);
}
