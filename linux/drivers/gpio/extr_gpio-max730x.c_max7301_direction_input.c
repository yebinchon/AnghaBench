
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max7301 {int* port_config; int input_pullup_active; int (* write ) (int ,int,int) ;int lock; int dev; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int PIN_CONFIG_IN_PULLUP ;
 int PIN_CONFIG_IN_WO_PULLUP ;
 int PIN_CONFIG_MASK ;
 struct max7301* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int max7301_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct max7301 *ts = gpiochip_get_data(chip);
 u8 *config;
 u8 offset_bits, pin_config;
 int ret;


 offset += 4;
 offset_bits = (offset & 3) << 1;

 config = &ts->port_config[offset >> 2];

 if (ts->input_pullup_active & BIT(offset))
  pin_config = PIN_CONFIG_IN_PULLUP;
 else
  pin_config = PIN_CONFIG_IN_WO_PULLUP;

 mutex_lock(&ts->lock);

 *config = (*config & ~(PIN_CONFIG_MASK << offset_bits))
      | (pin_config << offset_bits);

 ret = ts->write(ts->dev, 0x08 + (offset >> 2), *config);

 mutex_unlock(&ts->lock);

 return ret;
}
