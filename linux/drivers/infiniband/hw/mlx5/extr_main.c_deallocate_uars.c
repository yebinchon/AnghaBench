
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bfreg_info {int num_sys_pages; int num_static_sys_pages; scalar_t__* sys_pages; } ;
struct mlx5_ib_ucontext {struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_IB_INVALID_UAR_INDEX ;
 int mlx5_cmd_free_uar (int ,scalar_t__) ;

__attribute__((used)) static void deallocate_uars(struct mlx5_ib_dev *dev,
       struct mlx5_ib_ucontext *context)
{
 struct mlx5_bfreg_info *bfregi;
 int i;

 bfregi = &context->bfregi;
 for (i = 0; i < bfregi->num_sys_pages; i++)
  if (i < bfregi->num_static_sys_pages ||
      bfregi->sys_pages[i] != MLX5_IB_INVALID_UAR_INDEX)
   mlx5_cmd_free_uar(dev->mdev, bfregi->sys_pages[i]);
}
