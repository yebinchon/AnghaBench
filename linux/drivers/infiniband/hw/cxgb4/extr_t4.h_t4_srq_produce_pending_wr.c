
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_srq {scalar_t__ pending_pidx; scalar_t__ size; int in_use; int pending_in_use; } ;



__attribute__((used)) static inline void t4_srq_produce_pending_wr(struct t4_srq *srq)
{
 srq->pending_in_use++;
 srq->in_use++;
 if (++srq->pending_pidx == srq->size)
  srq->pending_pidx = 0;
}
