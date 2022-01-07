
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t4_srq {size_t cidx; size_t size; TYPE_2__* queue; int in_use; } ;
struct TYPE_3__ {size_t host_cidx; } ;
struct TYPE_4__ {TYPE_1__ status; } ;



__attribute__((used)) static inline void t4_srq_consume(struct t4_srq *srq)
{
 srq->in_use--;
 if (++srq->cidx == srq->size)
  srq->cidx = 0;
 srq->queue[srq->size].status.host_cidx = srq->cidx;
}
