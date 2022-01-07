
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int free_buffer_wait; } ;
struct dm_buffer {int state; scalar_t__ write_error; scalar_t__ read_error; int hold_count; struct dm_bufio_client* c; } ;


 int BUG_ON (int) ;
 int B_DIRTY ;
 int B_READING ;
 int B_WRITING ;
 int __free_buffer_wake (struct dm_buffer*) ;
 int __unlink_buffer (struct dm_buffer*) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

void dm_bufio_release(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 dm_bufio_lock(c);

 BUG_ON(!b->hold_count);

 b->hold_count--;
 if (!b->hold_count) {
  wake_up(&c->free_buffer_wait);






  if ((b->read_error || b->write_error) &&
      !test_bit(B_READING, &b->state) &&
      !test_bit(B_WRITING, &b->state) &&
      !test_bit(B_DIRTY, &b->state)) {
   __unlink_buffer(b);
   __free_buffer_wake(b);
  }
 }

 dm_bufio_unlock(c);
}
