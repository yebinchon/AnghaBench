
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int atomic ;
 int umr_modify_atomic_disabled ;
 int umr_modify_entity_size_disabled ;

__attribute__((used)) static inline bool mlx5_ib_can_use_umr(struct mlx5_ib_dev *dev,
           bool do_modify_atomic)
{
 if (MLX5_CAP_GEN(dev->mdev, umr_modify_entity_size_disabled))
  return 0;

 if (do_modify_atomic &&
     MLX5_CAP_GEN(dev->mdev, atomic) &&
     MLX5_CAP_GEN(dev->mdev, umr_modify_atomic_disabled))
  return 0;

 return 1;
}
