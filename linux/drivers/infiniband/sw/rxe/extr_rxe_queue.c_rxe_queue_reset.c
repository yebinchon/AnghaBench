
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue_buf {int dummy; } ;
struct rxe_queue {scalar_t__ buf_size; TYPE_1__* buf; } ;
struct TYPE_2__ {int data; } ;


 int memset (int ,int ,scalar_t__) ;

inline void rxe_queue_reset(struct rxe_queue *q)
{




 memset(q->buf->data, 0, q->buf_size - sizeof(struct rxe_queue_buf));
}
