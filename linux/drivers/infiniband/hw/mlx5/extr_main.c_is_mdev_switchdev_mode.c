
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 scalar_t__ MLX5_ESWITCH_MANAGER (struct mlx5_core_dev const*) ;
 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 scalar_t__ mlx5_ib_eswitch_mode (int ) ;

__attribute__((used)) static bool is_mdev_switchdev_mode(const struct mlx5_core_dev *mdev)
{
 return MLX5_ESWITCH_MANAGER(mdev) &&
        mlx5_ib_eswitch_mode(mdev->priv.eswitch) ==
         MLX5_ESWITCH_OFFLOADS;
}
