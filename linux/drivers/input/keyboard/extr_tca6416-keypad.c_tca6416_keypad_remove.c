
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6416_keypad_chip {int input; int irqnum; int use_polling; } ;
struct i2c_client {int dummy; } ;


 int enable_irq (int ) ;
 int free_irq (int ,struct tca6416_keypad_chip*) ;
 struct tca6416_keypad_chip* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct tca6416_keypad_chip*) ;

__attribute__((used)) static int tca6416_keypad_remove(struct i2c_client *client)
{
 struct tca6416_keypad_chip *chip = i2c_get_clientdata(client);

 if (!chip->use_polling) {
  free_irq(chip->irqnum, chip);
  enable_irq(chip->irqnum);
 }

 input_unregister_device(chip->input);
 kfree(chip);

 return 0;
}
