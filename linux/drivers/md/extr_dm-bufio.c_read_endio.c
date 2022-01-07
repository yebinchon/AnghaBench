
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int state; int read_error; } ;
typedef int blk_status_t ;


 int BUG_ON (int) ;
 int B_READING ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void read_endio(struct dm_buffer *b, blk_status_t status)
{
 b->read_error = status;

 BUG_ON(!test_bit(B_READING, &b->state));

 smp_mb__before_atomic();
 clear_bit(B_READING, &b->state);
 smp_mb__after_atomic();

 wake_up_bit(&b->state, B_READING);
}
