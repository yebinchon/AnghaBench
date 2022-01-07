
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {TYPE_1__* buf; } ;
struct TYPE_2__ {unsigned int consumer_index; } ;



__attribute__((used)) static inline unsigned int consumer_index(struct rxe_queue *q)
{
 return q->buf->consumer_index;
}
