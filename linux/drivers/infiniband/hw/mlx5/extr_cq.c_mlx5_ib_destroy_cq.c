
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_cq {int mcq; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;


 int destroy_cq_kernel (struct mlx5_ib_dev*,struct mlx5_ib_cq*) ;
 int destroy_cq_user (struct mlx5_ib_cq*,struct ib_udata*) ;
 int mlx5_core_destroy_cq (int ,int *) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

void mlx5_ib_destroy_cq(struct ib_cq *cq, struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(cq->device);
 struct mlx5_ib_cq *mcq = to_mcq(cq);

 mlx5_core_destroy_cq(dev->mdev, &mcq->mcq);
 if (udata)
  destroy_cq_user(mcq, udata);
 else
  destroy_cq_kernel(dev, mcq);
}
