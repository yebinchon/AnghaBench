
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct mlx5_ib_qp* in; int mdct; } ;
struct TYPE_3__ {int device; } ;
struct mlx5_ib_qp {scalar_t__ state; TYPE_2__ dct; TYPE_1__ ibqp; } ;
struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ IB_QPS_RTR ;
 int kfree (struct mlx5_ib_qp*) ;
 int mlx5_core_destroy_dct (int ,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_destroy_dct(struct mlx5_ib_qp *mqp)
{
 struct mlx5_ib_dev *dev = to_mdev(mqp->ibqp.device);

 if (mqp->state == IB_QPS_RTR) {
  int err;

  err = mlx5_core_destroy_dct(dev->mdev, &mqp->dct.mdct);
  if (err) {
   mlx5_ib_warn(dev, "failed to destroy DCT %d\n", err);
   return err;
  }
 }

 kfree(mqp->dct.in);
 kfree(mqp);
 return 0;
}
