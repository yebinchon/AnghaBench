
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {unsigned int block_size; } ;
struct dm_buffer {unsigned int dirty_start; unsigned int dirty_end; int state; struct dm_bufio_client* c; } ;


 int BUG_ON (int) ;
 int B_DIRTY ;
 int B_READING ;
 int LIST_DIRTY ;
 int __relink_lru (struct dm_buffer*,int ) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void dm_bufio_mark_partial_buffer_dirty(struct dm_buffer *b,
     unsigned start, unsigned end)
{
 struct dm_bufio_client *c = b->c;

 BUG_ON(start >= end);
 BUG_ON(end > b->c->block_size);

 dm_bufio_lock(c);

 BUG_ON(test_bit(B_READING, &b->state));

 if (!test_and_set_bit(B_DIRTY, &b->state)) {
  b->dirty_start = start;
  b->dirty_end = end;
  __relink_lru(b, LIST_DIRTY);
 } else {
  if (start < b->dirty_start)
   b->dirty_start = start;
  if (end > b->dirty_end)
   b->dirty_end = end;
 }

 dm_bufio_unlock(c);
}
