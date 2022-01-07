
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {scalar_t__* count; } ;


 int first_hi_bfreg (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ;
 int first_med_bfreg (struct mlx5_ib_dev*,struct mlx5_bfreg_info*) ;

__attribute__((used)) static int alloc_med_class_bfreg(struct mlx5_ib_dev *dev,
     struct mlx5_bfreg_info *bfregi)
{
 int minidx = first_med_bfreg(dev, bfregi);
 int i;

 if (minidx < 0)
  return minidx;

 for (i = minidx; i < first_hi_bfreg(dev, bfregi); i++) {
  if (bfregi->count[i] < bfregi->count[minidx])
   minidx = i;
  if (!bfregi->count[minidx])
   break;
 }

 bfregi->count[minidx]++;
 return minidx;
}
