
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;
struct hns_roce_qp {int dummy; } ;
struct hns_roce_cq {int* tptr_addr; int cons_index; int cq_depth; int lock; } ;


 int EAGAIN ;
 int hns_roce_v1_cq_set_ci (struct hns_roce_cq*,int) ;
 int hns_roce_v1_poll_one (struct hns_roce_cq*,struct hns_roce_qp**,struct ib_wc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hns_roce_cq* to_hr_cq (struct ib_cq*) ;
 int wmb () ;

int hns_roce_v1_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct hns_roce_cq *hr_cq = to_hr_cq(ibcq);
 struct hns_roce_qp *cur_qp = ((void*)0);
 unsigned long flags;
 int npolled;
 int ret = 0;

 spin_lock_irqsave(&hr_cq->lock, flags);

 for (npolled = 0; npolled < num_entries; ++npolled) {
  ret = hns_roce_v1_poll_one(hr_cq, &cur_qp, wc + npolled);
  if (ret)
   break;
 }

 if (npolled) {
  *hr_cq->tptr_addr = hr_cq->cons_index &
   ((hr_cq->cq_depth << 1) - 1);


  wmb();
  hns_roce_v1_cq_set_ci(hr_cq, hr_cq->cons_index);
 }

 spin_unlock_irqrestore(&hr_cq->lock, flags);

 if (ret == 0 || ret == -EAGAIN)
  return npolled;
 else
  return ret;
}
