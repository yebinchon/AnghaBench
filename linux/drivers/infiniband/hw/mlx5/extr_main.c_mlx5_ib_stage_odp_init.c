
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;


 int mlx5_ib_odp_init_one (struct mlx5_ib_dev*) ;

__attribute__((used)) static int mlx5_ib_stage_odp_init(struct mlx5_ib_dev *dev)
{
 return mlx5_ib_odp_init_one(dev);
}
