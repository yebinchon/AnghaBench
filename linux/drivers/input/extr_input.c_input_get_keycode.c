
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_keymap_entry {int dummy; } ;
struct input_dev {int (* getkeycode ) (struct input_dev*,struct input_keymap_entry*) ;int event_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct input_dev*,struct input_keymap_entry*) ;

int input_get_keycode(struct input_dev *dev, struct input_keymap_entry *ke)
{
 unsigned long flags;
 int retval;

 spin_lock_irqsave(&dev->event_lock, flags);
 retval = dev->getkeycode(dev, ke);
 spin_unlock_irqrestore(&dev->event_lock, flags);

 return retval;
}
