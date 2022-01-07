
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umr_common {int sem; int qp; } ;
struct TYPE_2__ {int * wr_cqe; } ;
struct mlx5_umr_wr {TYPE_1__ wr; } ;
struct mlx5_ib_umr_context {int status; int done; int cqe; } ;
struct mlx5_ib_dev {struct umr_common umrc; } ;
struct ib_send_wr {int dummy; } ;


 int EFAULT ;
 int IB_WC_SUCCESS ;
 int down (int *) ;
 int ib_post_send (int ,TYPE_1__*,struct ib_send_wr const**) ;
 int mlx5_ib_init_umr_context (struct mlx5_ib_umr_context*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int up (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mlx5_ib_post_send_wait(struct mlx5_ib_dev *dev,
      struct mlx5_umr_wr *umrwr)
{
 struct umr_common *umrc = &dev->umrc;
 const struct ib_send_wr *bad;
 int err;
 struct mlx5_ib_umr_context umr_context;

 mlx5_ib_init_umr_context(&umr_context);
 umrwr->wr.wr_cqe = &umr_context.cqe;

 down(&umrc->sem);
 err = ib_post_send(umrc->qp, &umrwr->wr, &bad);
 if (err) {
  mlx5_ib_warn(dev, "UMR post send failed, err %d\n", err);
 } else {
  wait_for_completion(&umr_context.done);
  if (umr_context.status != IB_WC_SUCCESS) {
   mlx5_ib_warn(dev, "reg umr failed (%u)\n",
         umr_context.status);
   err = -EFAULT;
  }
 }
 up(&umrc->sem);
 return err;
}
