
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3_cqe {int dummy; } ;
struct t3_cq {int size_log2; int rptr; struct t3_cqe* queue; int sw_rptr; struct t3_cqe* sw_queue; int sw_wptr; } ;


 scalar_t__ CQ_VLD_ENTRY (int ,int ,struct t3_cqe*) ;
 int Q_EMPTY (int ,int ) ;
 int Q_PTR2IDX (int ,int ) ;

__attribute__((used)) static inline struct t3_cqe *cxio_next_cqe(struct t3_cq *cq)
{
 struct t3_cqe *cqe;

 if (!Q_EMPTY(cq->sw_rptr, cq->sw_wptr)) {
  cqe = cq->sw_queue + (Q_PTR2IDX(cq->sw_rptr, cq->size_log2));
  return cqe;
 }
 cqe = cq->queue + (Q_PTR2IDX(cq->rptr, cq->size_log2));
 if (CQ_VLD_ENTRY(cq->rptr, cq->size_log2, cqe))
  return cqe;
 return ((void*)0);
}
