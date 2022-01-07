
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_rwq {int core_qp; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_wq {int pd; int device; } ;
struct ib_udata {int dummy; } ;


 int destroy_user_rq (struct mlx5_ib_dev*,int ,struct mlx5_ib_rwq*,struct ib_udata*) ;
 int kfree (struct mlx5_ib_rwq*) ;
 int mlx5_core_destroy_rq_tracked (int ,int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_rwq* to_mrwq (struct ib_wq*) ;

void mlx5_ib_destroy_wq(struct ib_wq *wq, struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(wq->device);
 struct mlx5_ib_rwq *rwq = to_mrwq(wq);

 mlx5_core_destroy_rq_tracked(dev->mdev, &rwq->core_qp);
 destroy_user_rq(dev, wq->pd, rwq, udata);
 kfree(rwq);
}
