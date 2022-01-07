
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_integrity_range {int waiting; int task; int wait_entry; } ;
struct TYPE_2__ {int lock; } ;
struct dm_integrity_c {TYPE_1__ endio_wait; int wait_list; } ;


 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int io_schedule () ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void wait_and_add_new_range(struct dm_integrity_c *ic, struct dm_integrity_range *new_range)
{
 new_range->waiting = 1;
 list_add_tail(&new_range->wait_entry, &ic->wait_list);
 new_range->task = current;
 do {
  __set_current_state(TASK_UNINTERRUPTIBLE);
  spin_unlock_irq(&ic->endio_wait.lock);
  io_schedule();
  spin_lock_irq(&ic->endio_wait.lock);
 } while (unlikely(new_range->waiting));
}
