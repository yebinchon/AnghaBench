
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_use; } ;
struct t4_wq {TYPE_1__ rq; } ;
struct t4_cq {int dummy; } ;


 int insert_recv_cqe (struct t4_wq*,struct t4_cq*,int ) ;
 int pr_debug (char*,struct t4_wq*,struct t4_cq*,int,int) ;

int c4iw_flush_rq(struct t4_wq *wq, struct t4_cq *cq, int count)
{
 int flushed = 0;
 int in_use = wq->rq.in_use - count;

 pr_debug("wq %p cq %p rq.in_use %u skip count %u\n",
   wq, cq, wq->rq.in_use, count);
 while (in_use--) {
  insert_recv_cqe(wq, cq, 0);
  flushed++;
 }
 return flushed;
}
