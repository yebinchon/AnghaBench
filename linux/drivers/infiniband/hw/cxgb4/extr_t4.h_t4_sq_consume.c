
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cidx; scalar_t__ flush_cidx; scalar_t__ size; int in_use; } ;
struct t4_wq {TYPE_1__ sq; } ;



__attribute__((used)) static inline void t4_sq_consume(struct t4_wq *wq)
{
 if (wq->sq.cidx == wq->sq.flush_cidx)
  wq->sq.flush_cidx = -1;
 wq->sq.in_use--;
 if (++wq->sq.cidx == wq->sq.size)
  wq->sq.cidx = 0;
}
