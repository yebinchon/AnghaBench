
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int dummy; } ;


 int MLX5_NON_FP_BFREGS_PER_UAR ;
 int get_num_static_uars (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ;

__attribute__((used)) static int max_bfregs(struct mlx5_ib_dev *dev, struct mlx5_bfreg_info *bfregi)
{
 return get_num_static_uars(dev, bfregi) * MLX5_NON_FP_BFREGS_PER_UAR;
}
