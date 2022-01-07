
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tca6416_keypad_chip {int reg_output; int reg_direction; int pinmask; int reg_input; } ;


 int TCA6416_DIRECTION ;
 int TCA6416_INPUT ;
 int TCA6416_OUTPUT ;
 int tca6416_read_reg (struct tca6416_keypad_chip*,int ,int*) ;
 int tca6416_write_reg (struct tca6416_keypad_chip*,int ,int) ;

__attribute__((used)) static int tca6416_setup_registers(struct tca6416_keypad_chip *chip)
{
 int error;

 error = tca6416_read_reg(chip, TCA6416_OUTPUT, &chip->reg_output);
 if (error)
  return error;

 error = tca6416_read_reg(chip, TCA6416_DIRECTION, &chip->reg_direction);
 if (error)
  return error;


 error = tca6416_write_reg(chip, TCA6416_DIRECTION,
      chip->reg_direction | chip->pinmask);
 if (error)
  return error;

 error = tca6416_read_reg(chip, TCA6416_DIRECTION, &chip->reg_direction);
 if (error)
  return error;

 error = tca6416_read_reg(chip, TCA6416_INPUT, &chip->reg_input);
 if (error)
  return error;

 chip->reg_input &= chip->pinmask;

 return 0;
}
