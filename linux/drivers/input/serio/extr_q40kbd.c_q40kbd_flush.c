
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q40kbd {int lock; } ;


 int INTERRUPT_REG ;
 int KEYCODE_REG ;
 int Q40_IRQ_KEYB_MASK ;
 int master_inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void q40kbd_flush(struct q40kbd *q40kbd)
{
 int maxread = 100;
 unsigned long flags;

 spin_lock_irqsave(&q40kbd->lock, flags);

 while (maxread-- && (Q40_IRQ_KEYB_MASK & master_inb(INTERRUPT_REG)))
  master_inb(KEYCODE_REG);

 spin_unlock_irqrestore(&q40kbd->lock, flags);
}
