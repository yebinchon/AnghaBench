
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct push_buffer {int pos; scalar_t__ fence; scalar_t__ size; scalar_t__ mapped; } ;


 int WARN_ON (int) ;

__attribute__((used)) static void host1x_pushbuffer_push(struct push_buffer *pb, u32 op1, u32 op2)
{
 u32 *p = (u32 *)((void *)pb->mapped + pb->pos);

 WARN_ON(pb->pos == pb->fence);
 *(p++) = op1;
 *(p++) = op2;
 pb->pos += 8;

 if (pb->pos >= pb->size)
  pb->pos -= pb->size;
}
