
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {scalar_t__ sw_cidx; scalar_t__ size; int sw_in_use; } ;



__attribute__((used)) static inline void t4_swcq_consume(struct t4_cq *cq)
{
 cq->sw_in_use--;
 if (++cq->sw_cidx == cq->size)
  cq->sw_cidx = 0;
}
