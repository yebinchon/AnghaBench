
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6416_keypad_chip {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tca6416_keys_scan (struct tca6416_keypad_chip*) ;

__attribute__((used)) static irqreturn_t tca6416_keys_isr(int irq, void *dev_id)
{
 struct tca6416_keypad_chip *chip = dev_id;

 tca6416_keys_scan(chip);

 return IRQ_HANDLED;
}
