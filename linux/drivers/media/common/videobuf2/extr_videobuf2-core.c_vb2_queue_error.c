
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int error; int done_wq; } ;


 int wake_up_all (int *) ;

void vb2_queue_error(struct vb2_queue *q)
{
 q->error = 1;

 wake_up_all(&q->done_wq);
}
