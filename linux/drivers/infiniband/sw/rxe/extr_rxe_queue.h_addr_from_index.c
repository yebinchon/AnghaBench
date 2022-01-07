
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {unsigned int index_mask; TYPE_1__* buf; } ;
struct TYPE_2__ {void* data; unsigned int log2_elem_size; } ;



__attribute__((used)) static inline void *addr_from_index(struct rxe_queue *q, unsigned int index)
{
 return q->buf->data + ((index & q->index_mask)
    << q->buf->log2_elem_size);
}
