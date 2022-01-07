
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct hv_kbd_dev* port_data; } ;
struct hv_kbd_dev {int started; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hv_kbd_stop(struct serio *serio)
{
 struct hv_kbd_dev *kbd_dev = serio->port_data;
 unsigned long flags;

 spin_lock_irqsave(&kbd_dev->lock, flags);
 kbd_dev->started = 0;
 spin_unlock_irqrestore(&kbd_dev->lock, flags);
}
