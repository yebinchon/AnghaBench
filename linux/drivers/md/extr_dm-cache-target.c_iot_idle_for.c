
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_tracker {int lock; } ;


 int __iot_idle_for (struct io_tracker*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool iot_idle_for(struct io_tracker *iot, unsigned long jifs)
{
 bool r;
 unsigned long flags;

 spin_lock_irqsave(&iot->lock, flags);
 r = __iot_idle_for(iot, jifs);
 spin_unlock_irqrestore(&iot->lock, flags);

 return r;
}
