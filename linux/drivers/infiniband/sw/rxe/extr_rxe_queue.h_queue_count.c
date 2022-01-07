
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {unsigned int index_mask; TYPE_1__* buf; } ;
struct TYPE_2__ {unsigned int producer_index; unsigned int consumer_index; } ;



__attribute__((used)) static inline unsigned int queue_count(const struct rxe_queue *q)
{
 return (q->buf->producer_index - q->buf->consumer_index)
  & q->index_mask;
}
