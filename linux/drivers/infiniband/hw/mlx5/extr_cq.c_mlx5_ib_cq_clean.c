
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_srq {int dummy; } ;
struct mlx5_ib_cq {int lock; } ;


 int __mlx5_ib_cq_clean (struct mlx5_ib_cq*,int ,struct mlx5_ib_srq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void mlx5_ib_cq_clean(struct mlx5_ib_cq *cq, u32 qpn, struct mlx5_ib_srq *srq)
{
 if (!cq)
  return;

 spin_lock_irq(&cq->lock);
 __mlx5_ib_cq_clean(cq, qpn, srq);
 spin_unlock_irq(&cq->lock);
}
