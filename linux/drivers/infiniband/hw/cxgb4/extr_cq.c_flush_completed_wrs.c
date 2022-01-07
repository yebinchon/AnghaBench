
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flush_cidx; int cidx; int pidx; int size; struct t4_swsqe* sw_sq; } ;
struct t4_wq {TYPE_2__ sq; } ;
struct TYPE_3__ {int header; } ;
struct t4_swsqe {int flushed; TYPE_1__ cqe; scalar_t__ complete; int signaled; } ;
struct t4_cq {size_t sw_pidx; TYPE_1__* sw_queue; } ;


 int CQE_SWCQE_V (int) ;
 int htonl (int ) ;
 int pr_debug (char*,int,size_t) ;
 int t4_swcq_produce (struct t4_cq*) ;

__attribute__((used)) static void flush_completed_wrs(struct t4_wq *wq, struct t4_cq *cq)
{
 struct t4_swsqe *swsqe;
 int cidx;

 if (wq->sq.flush_cidx == -1)
  wq->sq.flush_cidx = wq->sq.cidx;
 cidx = wq->sq.flush_cidx;

 while (cidx != wq->sq.pidx) {
  swsqe = &wq->sq.sw_sq[cidx];
  if (!swsqe->signaled) {
   if (++cidx == wq->sq.size)
    cidx = 0;
  } else if (swsqe->complete) {




   pr_debug("moving cqe into swcq sq idx %u cq idx %u\n",
     cidx, cq->sw_pidx);
   swsqe->cqe.header |= htonl(CQE_SWCQE_V(1));
   cq->sw_queue[cq->sw_pidx] = swsqe->cqe;
   t4_swcq_produce(cq);
   swsqe->flushed = 1;
   if (++cidx == wq->sq.size)
    cidx = 0;
   wq->sq.flush_cidx = cidx;
  } else
   break;
 }
}
