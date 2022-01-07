
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {int lock; } ;
typedef int sector_t ;


 int __iot_io_end (struct io_tracker*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iot_io_end(struct io_tracker *iot, sector_t len)
{
 unsigned long flags;

 spin_lock_irqsave(&iot->lock, flags);
 __iot_io_end(iot, len);
 spin_unlock_irqrestore(&iot->lock, flags);
}
