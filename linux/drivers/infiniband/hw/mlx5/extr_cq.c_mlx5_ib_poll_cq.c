
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_qp {int dummy; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct TYPE_2__ {int device; } ;
struct mlx5_ib_cq {int lock; int mcq; int wc_list; TYPE_1__ ibcq; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int list_empty (int *) ;
 int mlx5_cq_set_ci (int *) ;
 int mlx5_ib_poll_sw_comp (struct mlx5_ib_cq*,int,struct ib_wc*,int*) ;
 scalar_t__ mlx5_poll_one (struct mlx5_ib_cq*,struct mlx5_ib_qp**,struct ib_wc*) ;
 int poll_soft_wc (struct mlx5_ib_cq*,int,struct ib_wc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 scalar_t__ unlikely (int) ;

int mlx5_ib_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct mlx5_ib_cq *cq = to_mcq(ibcq);
 struct mlx5_ib_qp *cur_qp = ((void*)0);
 struct mlx5_ib_dev *dev = to_mdev(cq->ibcq.device);
 struct mlx5_core_dev *mdev = dev->mdev;
 unsigned long flags;
 int soft_polled = 0;
 int npolled;

 spin_lock_irqsave(&cq->lock, flags);
 if (mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {

  if (unlikely(!list_empty(&cq->wc_list)))
   soft_polled = poll_soft_wc(cq, num_entries, wc, 1);

  mlx5_ib_poll_sw_comp(cq, num_entries - soft_polled,
         wc + soft_polled, &npolled);
  goto out;
 }

 if (unlikely(!list_empty(&cq->wc_list)))
  soft_polled = poll_soft_wc(cq, num_entries, wc, 0);

 for (npolled = 0; npolled < num_entries - soft_polled; npolled++) {
  if (mlx5_poll_one(cq, &cur_qp, wc + soft_polled + npolled))
   break;
 }

 if (npolled)
  mlx5_cq_set_ci(&cq->mcq);
out:
 spin_unlock_irqrestore(&cq->lock, flags);

 return soft_polled + npolled;
}
