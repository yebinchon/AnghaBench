
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int num_low_latency_bfregs; } ;


 int NUM_NON_BLUE_FLAME_BFREGS ;
 int max_bfregs (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ;

__attribute__((used)) static int num_med_bfreg(struct mlx5_ib_dev *dev,
    struct mlx5_bfreg_info *bfregi)
{
 int n;

 n = max_bfregs(dev, bfregi) - bfregi->num_low_latency_bfregs -
     NUM_NON_BLUE_FLAME_BFREGS;

 return n >= 0 ? n : 0;
}
