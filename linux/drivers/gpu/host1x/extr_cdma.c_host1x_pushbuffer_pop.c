
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_buffer {scalar_t__ fence; scalar_t__ size; } ;



__attribute__((used)) static void host1x_pushbuffer_pop(struct push_buffer *pb, unsigned int slots)
{

 pb->fence += slots * 8;

 if (pb->fence >= pb->size)
  pb->fence -= pb->size;
}
