
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int dummy; } ;


 int ENOMEM ;
 scalar_t__ num_med_bfreg (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ;

__attribute__((used)) static int first_med_bfreg(struct mlx5_ib_dev *dev,
      struct mlx5_bfreg_info *bfregi)
{
 return num_med_bfreg(dev, bfregi) ? 1 : -ENOMEM;
}
