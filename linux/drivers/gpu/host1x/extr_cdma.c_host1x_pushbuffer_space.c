
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct push_buffer {unsigned int fence; unsigned int pos; scalar_t__ size; } ;



__attribute__((used)) static u32 host1x_pushbuffer_space(struct push_buffer *pb)
{
 unsigned int fence = pb->fence;

 if (pb->fence < pb->pos)
  fence += pb->size;

 return (fence - pb->pos) / 8;
}
