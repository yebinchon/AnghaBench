
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {int lock; int in_flight; } ;
typedef scalar_t__ sector_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iot_io_begin(struct io_tracker *iot, sector_t len)
{
 unsigned long flags;

 spin_lock_irqsave(&iot->lock, flags);
 iot->in_flight += len;
 spin_unlock_irqrestore(&iot->lock, flags);
}
