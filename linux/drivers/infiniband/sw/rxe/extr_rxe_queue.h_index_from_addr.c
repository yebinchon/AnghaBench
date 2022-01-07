
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rxe_queue {int log2_elem_size; int index_mask; TYPE_1__* buf; } ;
struct TYPE_2__ {int * data; } ;



__attribute__((used)) static inline unsigned int index_from_addr(const struct rxe_queue *q,
        const void *addr)
{
 return (((u8 *)addr - q->buf->data) >> q->log2_elem_size)
  & q->index_mask;
}
