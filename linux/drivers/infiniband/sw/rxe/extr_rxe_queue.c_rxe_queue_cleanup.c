
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_queue {int buf; TYPE_1__* ip; } ;
struct TYPE_2__ {int ref; } ;


 int kfree (struct rxe_queue*) ;
 int kref_put (int *,int ) ;
 int rxe_mmap_release ;
 int vfree (int ) ;

void rxe_queue_cleanup(struct rxe_queue *q)
{
 if (q->ip)
  kref_put(&q->ip->ref, rxe_mmap_release);
 else
  vfree(q->buf);

 kfree(q);
}
