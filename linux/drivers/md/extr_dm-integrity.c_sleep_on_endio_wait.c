
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct dm_integrity_c {TYPE_1__ endio_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int __add_wait_queue (TYPE_1__*,int *) ;
 int __remove_wait_queue (TYPE_1__*,int *) ;
 int __set_current_state (int ) ;
 int current ;
 int io_schedule () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static void sleep_on_endio_wait(struct dm_integrity_c *ic)
{
 DECLARE_WAITQUEUE(wait, current);
 __add_wait_queue(&ic->endio_wait, &wait);
 __set_current_state(TASK_UNINTERRUPTIBLE);
 spin_unlock_irq(&ic->endio_wait.lock);
 io_schedule();
 spin_lock_irq(&ic->endio_wait.lock);
 __remove_wait_queue(&ic->endio_wait, &wait);
}
