
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_writes_c {int wait; int io_blocks; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int smp_mb__after_atomic () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void put_io_block(struct log_writes_c *lc)
{
 if (atomic_dec_and_test(&lc->io_blocks)) {
  smp_mb__after_atomic();
  if (waitqueue_active(&lc->wait))
   wake_up(&lc->wait);
 }
}
