
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cq {int cq_context; int (* comp_handler ) (struct ib_cq*,int ) ;} ;
struct hns_roce_cq {struct ib_cq ib_cq; } ;


 int stub1 (struct ib_cq*,int ) ;

__attribute__((used)) static void hns_roce_ib_cq_comp(struct hns_roce_cq *hr_cq)
{
 struct ib_cq *ibcq = &hr_cq->ib_cq;

 ibcq->comp_handler(ibcq, ibcq->cq_context);
}
