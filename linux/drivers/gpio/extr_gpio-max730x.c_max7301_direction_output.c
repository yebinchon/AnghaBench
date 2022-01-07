
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max7301 {int* port_config; int (* write ) (int ,int,int) ;int lock; int dev; } ;
struct gpio_chip {int dummy; } ;


 int PIN_CONFIG_MASK ;
 int PIN_CONFIG_OUT ;
 int __max7301_set (struct max7301*,unsigned int,int) ;
 struct max7301* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int max7301_direction_output(struct gpio_chip *chip, unsigned offset,
        int value)
{
 struct max7301 *ts = gpiochip_get_data(chip);
 u8 *config;
 u8 offset_bits;
 int ret;


 offset += 4;
 offset_bits = (offset & 3) << 1;

 config = &ts->port_config[offset >> 2];

 mutex_lock(&ts->lock);

 *config = (*config & ~(PIN_CONFIG_MASK << offset_bits))
      | (PIN_CONFIG_OUT << offset_bits);

 ret = __max7301_set(ts, offset, value);

 if (!ret)
  ret = ts->write(ts->dev, 0x08 + (offset >> 2), *config);

 mutex_unlock(&ts->lock);

 return ret;
}
