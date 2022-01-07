
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {int index_mask; int log2_elem_size; TYPE_1__* buf; } ;
struct TYPE_2__ {void* data; int consumer_index; } ;



__attribute__((used)) static inline void *consumer_addr(struct rxe_queue *q)
{
 return q->buf->data + ((q->buf->consumer_index & q->index_mask)
    << q->log2_elem_size);
}
