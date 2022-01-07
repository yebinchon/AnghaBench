
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q40kbd {int lock; int port; } ;
typedef int irqreturn_t ;


 int INTERRUPT_REG ;
 int IRQ_HANDLED ;
 int KEYBOARD_UNLOCK_REG ;
 int KEYCODE_REG ;
 int Q40_IRQ_KEYB_MASK ;
 int master_inb (int ) ;
 int master_outb (int,int ) ;
 int serio_interrupt (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t q40kbd_interrupt(int irq, void *dev_id)
{
 struct q40kbd *q40kbd = dev_id;
 unsigned long flags;

 spin_lock_irqsave(&q40kbd->lock, flags);

 if (Q40_IRQ_KEYB_MASK & master_inb(INTERRUPT_REG))
  serio_interrupt(q40kbd->port, master_inb(KEYCODE_REG), 0);

 master_outb(-1, KEYBOARD_UNLOCK_REG);

 spin_unlock_irqrestore(&q40kbd->lock, flags);

 return IRQ_HANDLED;
}
