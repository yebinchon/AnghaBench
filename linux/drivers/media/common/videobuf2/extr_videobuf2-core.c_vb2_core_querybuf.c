
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int * bufs; } ;


 int call_void_bufop (struct vb2_queue*,int ,int ,void*) ;
 int fill_user_buffer ;

void vb2_core_querybuf(struct vb2_queue *q, unsigned int index, void *pb)
{
 call_void_bufop(q, fill_user_buffer, q->bufs[index], pb);
}
