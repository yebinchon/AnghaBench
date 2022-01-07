
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct t4_wq {int* qp_errp; scalar_t__* srqidxp; } ;



__attribute__((used)) static inline void t4_set_wq_in_error(struct t4_wq *wq, u32 srqidx)
{
 if (srqidx)
  *wq->srqidxp = srqidx;
 *wq->qp_errp = 1;
}
