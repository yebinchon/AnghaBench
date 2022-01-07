
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {int index_mask; TYPE_1__* buf; } ;
struct TYPE_2__ {int producer_index; int consumer_index; } ;



__attribute__((used)) static inline int queue_full(struct rxe_queue *q)
{
 return ((q->buf->producer_index + 1 - q->buf->consumer_index)
   & q->index_mask) == 0;
}
