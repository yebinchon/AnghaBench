
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int state; int hold_count; } ;
typedef int sector_t ;


 struct dm_buffer* __find (struct dm_bufio_client*,int ) ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __unlink_buffer (struct dm_buffer*) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 scalar_t__ likely (int) ;

void dm_bufio_forget(struct dm_bufio_client *c, sector_t block)
{
 struct dm_buffer *b;

 dm_bufio_lock(c);

 b = __find(c, block);
 if (b && likely(!b->hold_count) && likely(!b->state)) {
  __unlink_buffer(b);
  __free_buffer_wake(b);
 }

 dm_bufio_unlock(c);
}
