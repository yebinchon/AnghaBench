
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {unsigned int num_buffers; int * bufs; } ;


 scalar_t__ vb2_buffer_in_use (struct vb2_queue*,int ) ;

__attribute__((used)) static bool __buffers_in_use(struct vb2_queue *q)
{
 unsigned int buffer;
 for (buffer = 0; buffer < q->num_buffers; ++buffer) {
  if (vb2_buffer_in_use(q, q->bufs[buffer]))
   return 1;
 }
 return 0;
}
