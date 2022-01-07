
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gpio_vibrator {int running; int play_work; } ;


 int cancel_work_sync (int *) ;
 int gpio_vibrator_stop (struct gpio_vibrator*) ;
 struct gpio_vibrator* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void gpio_vibrator_close(struct input_dev *input)
{
 struct gpio_vibrator *vibrator = input_get_drvdata(input);

 cancel_work_sync(&vibrator->play_work);
 gpio_vibrator_stop(vibrator);
 vibrator->running = 0;
}
