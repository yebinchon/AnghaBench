
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int async_write_error; } ;
struct dm_buffer {int state; struct dm_bufio_client* c; int write_error; } ;
typedef int blk_status_t ;


 int BUG_ON (int) ;
 int B_WRITING ;
 int blk_status_to_errno (int ) ;
 int clear_bit (int ,int *) ;
 int cmpxchg (int *,int ,int ) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void write_endio(struct dm_buffer *b, blk_status_t status)
{
 b->write_error = status;
 if (unlikely(status)) {
  struct dm_bufio_client *c = b->c;

  (void)cmpxchg(&c->async_write_error, 0,
    blk_status_to_errno(status));
 }

 BUG_ON(!test_bit(B_WRITING, &b->state));

 smp_mb__before_atomic();
 clear_bit(B_WRITING, &b->state);
 smp_mb__after_atomic();

 wake_up_bit(&b->state, B_WRITING);
}
