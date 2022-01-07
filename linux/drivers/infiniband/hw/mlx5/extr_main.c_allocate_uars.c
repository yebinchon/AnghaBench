
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bfreg_info {int num_static_sys_pages; int num_sys_pages; int * sys_pages; } ;
struct mlx5_ib_ucontext {struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int mdev; } ;


 int MLX5_IB_INVALID_UAR_INDEX ;
 int mlx5_cmd_alloc_uar (int ,int *) ;
 scalar_t__ mlx5_cmd_free_uar (int ,int ) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;

__attribute__((used)) static int allocate_uars(struct mlx5_ib_dev *dev, struct mlx5_ib_ucontext *context)
{
 struct mlx5_bfreg_info *bfregi;
 int err;
 int i;

 bfregi = &context->bfregi;
 for (i = 0; i < bfregi->num_static_sys_pages; i++) {
  err = mlx5_cmd_alloc_uar(dev->mdev, &bfregi->sys_pages[i]);
  if (err)
   goto error;

  mlx5_ib_dbg(dev, "allocated uar %d\n", bfregi->sys_pages[i]);
 }

 for (i = bfregi->num_static_sys_pages; i < bfregi->num_sys_pages; i++)
  bfregi->sys_pages[i] = MLX5_IB_INVALID_UAR_INDEX;

 return 0;

error:
 for (--i; i >= 0; i--)
  if (mlx5_cmd_free_uar(dev->mdev, bfregi->sys_pages[i]))
   mlx5_ib_warn(dev, "failed to free uar %d\n", i);

 return err;
}
