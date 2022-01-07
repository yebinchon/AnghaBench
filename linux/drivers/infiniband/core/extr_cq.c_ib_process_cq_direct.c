
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int IB_POLL_BATCH_DIRECT ;
 int __ib_process_cq (struct ib_cq*,int,struct ib_wc*,int) ;

int ib_process_cq_direct(struct ib_cq *cq, int budget)
{
 struct ib_wc wcs[IB_POLL_BATCH_DIRECT];

 return __ib_process_cq(cq, budget, wcs, IB_POLL_BATCH_DIRECT);
}
