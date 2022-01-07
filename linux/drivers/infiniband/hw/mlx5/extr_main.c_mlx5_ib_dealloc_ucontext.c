
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_bfreg_info {int count; int sys_pages; } ;
struct mlx5_ib_ucontext {scalar_t__ devx_uid; int tdn; struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_ucontext {int device; } ;


 int deallocate_uars (struct mlx5_ib_dev*,struct mlx5_ib_ucontext*) ;
 int kfree (int ) ;
 int mlx5_ib_dealloc_transport_domain (struct mlx5_ib_dev*,int ,scalar_t__) ;
 int mlx5_ib_devx_destroy (struct mlx5_ib_dev*,scalar_t__) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_ucontext* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static void mlx5_ib_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct mlx5_ib_ucontext *context = to_mucontext(ibcontext);
 struct mlx5_ib_dev *dev = to_mdev(ibcontext->device);
 struct mlx5_bfreg_info *bfregi;

 bfregi = &context->bfregi;
 mlx5_ib_dealloc_transport_domain(dev, context->tdn, context->devx_uid);

 if (context->devx_uid)
  mlx5_ib_devx_destroy(dev, context->devx_uid);

 deallocate_uars(dev, context);
 kfree(bfregi->sys_pages);
 kfree(bfregi->count);
}
