
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gpio_beeper {int beeping; int work; } ;


 int EINVAL ;
 int ENOTSUPP ;
 unsigned int EV_SND ;
 unsigned int SND_BELL ;
 struct gpio_beeper* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int gpio_beeper_event(struct input_dev *dev, unsigned int type,
        unsigned int code, int value)
{
 struct gpio_beeper *beep = input_get_drvdata(dev);

 if (type != EV_SND || code != SND_BELL)
  return -ENOTSUPP;

 if (value < 0)
  return -EINVAL;

 beep->beeping = value;

 schedule_work(&beep->work);

 return 0;
}
