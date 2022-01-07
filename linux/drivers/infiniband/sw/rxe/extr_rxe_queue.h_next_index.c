
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {TYPE_1__* buf; } ;
struct TYPE_2__ {int index_mask; } ;



__attribute__((used)) static inline int next_index(struct rxe_queue *q, int index)
{
 return (index + 1) & q->buf->index_mask;
}
