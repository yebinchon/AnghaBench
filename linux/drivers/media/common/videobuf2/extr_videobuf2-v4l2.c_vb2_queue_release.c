
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;


 int vb2_core_queue_release (struct vb2_queue*) ;

void vb2_queue_release(struct vb2_queue *q)
{
 vb2_core_queue_release(q);
}
