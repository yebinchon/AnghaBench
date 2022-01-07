
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int free_buffer_wait; int need_reserved_buffers; int reserved_buffers; } ;
struct dm_buffer {int lru_list; struct dm_bufio_client* c; } ;


 int free_buffer (struct dm_buffer*) ;
 int list_add (int *,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void __free_buffer_wake(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 if (!c->need_reserved_buffers)
  free_buffer(b);
 else {
  list_add(&b->lru_list, &c->reserved_buffers);
  c->need_reserved_buffers--;
 }

 wake_up(&c->free_buffer_wait);
}
