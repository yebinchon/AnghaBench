
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int dummy; } ;


 int MLX5_BFREGS_PER_UAR ;
 int MLX5_NON_FP_BFREGS_PER_UAR ;

__attribute__((used)) static int adjust_bfregn(struct mlx5_ib_dev *dev,
    struct mlx5_bfreg_info *bfregi, int bfregn)
{
 return bfregn / MLX5_NON_FP_BFREGS_PER_UAR * MLX5_BFREGS_PER_UAR +
    bfregn % MLX5_NON_FP_BFREGS_PER_UAR;
}
