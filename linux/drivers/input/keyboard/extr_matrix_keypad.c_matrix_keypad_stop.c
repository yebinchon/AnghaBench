
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad {int stopped; int work; int lock; } ;
struct input_dev {int dummy; } ;


 int disable_row_irqs (struct matrix_keypad*) ;
 int flush_delayed_work (int *) ;
 struct matrix_keypad* input_get_drvdata (struct input_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void matrix_keypad_stop(struct input_dev *dev)
{
 struct matrix_keypad *keypad = input_get_drvdata(dev);

 spin_lock_irq(&keypad->lock);
 keypad->stopped = 1;
 spin_unlock_irq(&keypad->lock);

 flush_delayed_work(&keypad->work);




 disable_row_irqs(keypad);
}
