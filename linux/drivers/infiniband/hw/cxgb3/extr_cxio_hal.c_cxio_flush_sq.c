
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3_wq {scalar_t__ sq_rptr; scalar_t__ sq_wptr; int sq_size_log2; struct t3_swsq* sq; } ;
struct t3_swsq {scalar_t__ signaled; } ;
struct t3_cq {int dummy; } ;
typedef scalar_t__ __u32 ;


 int Q_PTR2IDX (scalar_t__,int ) ;
 int insert_sq_cqe (struct t3_wq*,struct t3_cq*,struct t3_swsq*) ;

int cxio_flush_sq(struct t3_wq *wq, struct t3_cq *cq, int count)
{
 __u32 ptr = wq->sq_rptr + count;
 int flushed = 0;
 struct t3_swsq *sqp = wq->sq + Q_PTR2IDX(ptr, wq->sq_size_log2);

 while (ptr != wq->sq_wptr) {
  sqp->signaled = 0;
  insert_sq_cqe(wq, cq, sqp);
  ptr++;
  sqp = wq->sq + Q_PTR2IDX(ptr, wq->sq_size_log2);
  flushed++;
 }
 return flushed;
}
