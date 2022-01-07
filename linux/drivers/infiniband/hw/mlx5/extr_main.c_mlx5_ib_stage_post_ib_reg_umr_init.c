
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;


 int create_umr_res (struct mlx5_ib_dev*) ;

__attribute__((used)) static int mlx5_ib_stage_post_ib_reg_umr_init(struct mlx5_ib_dev *dev)
{
 return create_umr_res(dev);
}
