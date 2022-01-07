
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gpio_beeper {int work; } ;


 int cancel_work_sync (int *) ;
 int gpio_beeper_toggle (struct gpio_beeper*,int) ;
 struct gpio_beeper* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void gpio_beeper_close(struct input_dev *input)
{
 struct gpio_beeper *beep = input_get_drvdata(input);

 cancel_work_sync(&beep->work);
 gpio_beeper_toggle(beep, 0);
}
