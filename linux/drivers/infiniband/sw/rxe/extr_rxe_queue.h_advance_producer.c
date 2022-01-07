
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {int index_mask; TYPE_1__* buf; } ;
struct TYPE_2__ {int producer_index; } ;



__attribute__((used)) static inline void advance_producer(struct rxe_queue *q)
{
 q->buf->producer_index = (q->buf->producer_index + 1)
   & q->index_mask;
}
