
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {unsigned long in_flight; unsigned long idle_time; int last_update_time; int lock; } ;


 int jiffies ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void iot_init(struct io_tracker *iot)
{
 spin_lock_init(&iot->lock);
 iot->in_flight = 0ul;
 iot->idle_time = 0ul;
 iot->last_update_time = jiffies;
}
