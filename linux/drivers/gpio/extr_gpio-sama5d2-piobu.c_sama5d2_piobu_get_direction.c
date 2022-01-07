
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int PIOBU_DIRECTION ;
 int PIOBU_IN ;
 int sama5d2_piobu_read_value (struct gpio_chip*,unsigned int,int ) ;

__attribute__((used)) static int sama5d2_piobu_get_direction(struct gpio_chip *chip,
           unsigned int pin)
{
 int ret = sama5d2_piobu_read_value(chip, pin, PIOBU_DIRECTION);

 if (ret < 0)
  return ret;

 return (ret == PIOBU_IN) ? 1 : 0;
}
