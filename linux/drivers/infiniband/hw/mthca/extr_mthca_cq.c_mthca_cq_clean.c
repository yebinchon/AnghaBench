
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mthca_srq {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct mthca_cqe {scalar_t__ my_qpn; int wqe; } ;
struct TYPE_2__ {int cqe; } ;
struct mthca_cq {int cons_index; int lock; TYPE_1__ ibcq; int cqn; } ;


 int MTHCA_CQ_ENTRY_SIZE ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int) ;
 scalar_t__ cqe_sw (struct mthca_cqe*) ;
 struct mthca_cqe* get_cqe (struct mthca_cq*,int) ;
 scalar_t__ is_recv_cqe (struct mthca_cqe*) ;
 int memcpy (struct mthca_cqe*,struct mthca_cqe*,int ) ;
 int mthca_dbg (struct mthca_dev*,char*,int,int ,int,int) ;
 int mthca_free_srq_wqe (struct mthca_srq*,int ) ;
 int set_cqe_hw (struct mthca_cqe*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_cons_index (struct mthca_dev*,struct mthca_cq*,int) ;
 int wmb () ;

void mthca_cq_clean(struct mthca_dev *dev, struct mthca_cq *cq, u32 qpn,
      struct mthca_srq *srq)
{
 struct mthca_cqe *cqe;
 u32 prod_index;
 int i, nfreed = 0;

 spin_lock_irq(&cq->lock);
 for (prod_index = cq->cons_index;
      cqe_sw(get_cqe(cq, prod_index & cq->ibcq.cqe));
      ++prod_index)
  if (prod_index == cq->cons_index + cq->ibcq.cqe)
   break;

 if (0)
  mthca_dbg(dev, "Cleaning QPN %06x from CQN %06x; ci %d, pi %d\n",
     qpn, cq->cqn, cq->cons_index, prod_index);





 while ((int) --prod_index - (int) cq->cons_index >= 0) {
  cqe = get_cqe(cq, prod_index & cq->ibcq.cqe);
  if (cqe->my_qpn == cpu_to_be32(qpn)) {
   if (srq && is_recv_cqe(cqe))
    mthca_free_srq_wqe(srq, be32_to_cpu(cqe->wqe));
   ++nfreed;
  } else if (nfreed)
   memcpy(get_cqe(cq, (prod_index + nfreed) & cq->ibcq.cqe),
          cqe, MTHCA_CQ_ENTRY_SIZE);
 }

 if (nfreed) {
  for (i = 0; i < nfreed; ++i)
   set_cqe_hw(get_cqe(cq, (cq->cons_index + i) & cq->ibcq.cqe));
  wmb();
  cq->cons_index += nfreed;
  update_cons_index(dev, cq, nfreed);
 }

 spin_unlock_irq(&cq->lock);
}
