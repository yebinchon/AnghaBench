
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int (* alloc_callback ) (struct dm_buffer*) ;} ;
struct dm_buffer {int dummy; } ;
typedef enum new_flag { ____Placeholder_new_flag } new_flag ;


 struct dm_buffer* __alloc_buffer_wait_no_callback (struct dm_bufio_client*,int) ;
 int stub1 (struct dm_buffer*) ;

__attribute__((used)) static struct dm_buffer *__alloc_buffer_wait(struct dm_bufio_client *c, enum new_flag nf)
{
 struct dm_buffer *b = __alloc_buffer_wait_no_callback(c, nf);

 if (!b)
  return ((void*)0);

 if (c->alloc_callback)
  c->alloc_callback(b);

 return b;
}
