
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct matrix_keypad {int scan_pending; int lock; TYPE_1__* pdata; int work; scalar_t__ stopped; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int debounce_ms; } ;


 int IRQ_HANDLED ;
 int disable_row_irqs (struct matrix_keypad*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t matrix_keypad_interrupt(int irq, void *id)
{
 struct matrix_keypad *keypad = id;
 unsigned long flags;

 spin_lock_irqsave(&keypad->lock, flags);






 if (unlikely(keypad->scan_pending || keypad->stopped))
  goto out;

 disable_row_irqs(keypad);
 keypad->scan_pending = 1;
 schedule_delayed_work(&keypad->work,
  msecs_to_jiffies(keypad->pdata->debounce_ms));

out:
 spin_unlock_irqrestore(&keypad->lock, flags);
 return IRQ_HANDLED;
}
