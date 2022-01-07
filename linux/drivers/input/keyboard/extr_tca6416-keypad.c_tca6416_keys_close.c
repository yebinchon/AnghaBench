
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6416_keypad_chip {int irqnum; int dwork; scalar_t__ use_polling; } ;
struct input_dev {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int disable_irq (int ) ;
 struct tca6416_keypad_chip* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void tca6416_keys_close(struct input_dev *dev)
{
 struct tca6416_keypad_chip *chip = input_get_drvdata(dev);

 if (chip->use_polling)
  cancel_delayed_work_sync(&chip->dwork);
 else
  disable_irq(chip->irqnum);
}
