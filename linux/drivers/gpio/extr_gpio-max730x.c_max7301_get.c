
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max7301 {unsigned int* port_config; int out_level; int (* read ) (int ,int) ;int lock; int dev; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;


 unsigned int PIN_CONFIG_MASK ;

 struct max7301* gpiochip_get_data (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int max7301_get(struct gpio_chip *chip, unsigned offset)
{
 struct max7301 *ts = gpiochip_get_data(chip);
 int config, level = -EINVAL;


 offset += 4;

 mutex_lock(&ts->lock);

 config = (ts->port_config[offset >> 2] >> ((offset & 3) << 1))
   & PIN_CONFIG_MASK;

 switch (config) {
 case 128:

  level = !!(ts->out_level & (1 << offset));
  break;
 case 129:
 case 130:

  level = ts->read(ts->dev, 0x20 + offset) & 0x01;
 }
 mutex_unlock(&ts->lock);

 return level;
}
