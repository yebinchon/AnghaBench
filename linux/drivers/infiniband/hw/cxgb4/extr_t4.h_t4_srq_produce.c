
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct t4_srq {int pidx; int size; int wq_pidx; TYPE_2__* queue; int in_use; } ;
struct TYPE_3__ {int host_pidx; } ;
struct TYPE_4__ {TYPE_1__ status; } ;


 scalar_t__ DIV_ROUND_UP (int,int ) ;
 int T4_EQ_ENTRY_SIZE ;
 int T4_RQ_NUM_SLOTS ;

__attribute__((used)) static inline void t4_srq_produce(struct t4_srq *srq, u8 len16)
{
 srq->in_use++;
 if (++srq->pidx == srq->size)
  srq->pidx = 0;
 srq->wq_pidx += DIV_ROUND_UP(len16 * 16, T4_EQ_ENTRY_SIZE);
 if (srq->wq_pidx >= srq->size * T4_RQ_NUM_SLOTS)
  srq->wq_pidx %= srq->size * T4_RQ_NUM_SLOTS;
 srq->queue[srq->size].status.host_pidx = srq->pidx;
}
