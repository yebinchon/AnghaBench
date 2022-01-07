
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hns_roce_srq {int dummy; } ;
struct hns_roce_cq {int lock; } ;


 int __hns_roce_v2_cq_clean (struct hns_roce_cq*,int ,struct hns_roce_srq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void hns_roce_v2_cq_clean(struct hns_roce_cq *hr_cq, u32 qpn,
     struct hns_roce_srq *srq)
{
 spin_lock_irq(&hr_cq->lock);
 __hns_roce_v2_cq_clean(hr_cq, qpn, srq);
 spin_unlock_irq(&hr_cq->lock);
}
