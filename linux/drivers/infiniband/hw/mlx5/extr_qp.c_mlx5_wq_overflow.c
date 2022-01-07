
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_wq {unsigned int head; unsigned int tail; unsigned int max_post; } ;
struct mlx5_ib_cq {int lock; } ;
struct ib_cq {int dummy; } ;


 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;

__attribute__((used)) static int mlx5_wq_overflow(struct mlx5_ib_wq *wq, int nreq, struct ib_cq *ib_cq)
{
 struct mlx5_ib_cq *cq;
 unsigned cur;

 cur = wq->head - wq->tail;
 if (likely(cur + nreq < wq->max_post))
  return 0;

 cq = to_mcq(ib_cq);
 spin_lock(&cq->lock);
 cur = wq->head - wq->tail;
 spin_unlock(&cq->lock);

 return cur + nreq >= wq->max_post;
}
