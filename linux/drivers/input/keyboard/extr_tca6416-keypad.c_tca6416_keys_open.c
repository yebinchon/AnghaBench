
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6416_keypad_chip {int irqnum; int dwork; scalar_t__ use_polling; } ;
struct input_dev {int dummy; } ;


 int enable_irq (int ) ;
 struct tca6416_keypad_chip* input_get_drvdata (struct input_dev*) ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int tca6416_keys_scan (struct tca6416_keypad_chip*) ;

__attribute__((used)) static int tca6416_keys_open(struct input_dev *dev)
{
 struct tca6416_keypad_chip *chip = input_get_drvdata(dev);


 tca6416_keys_scan(chip);

 if (chip->use_polling)
  schedule_delayed_work(&chip->dwork, msecs_to_jiffies(100));
 else
  enable_irq(chip->irqnum);

 return 0;
}
