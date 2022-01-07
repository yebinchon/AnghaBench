
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgpio_instance {int dummy; } ;


 int XGPIO_CHANNEL_OFFSET ;
 scalar_t__ xgpio_index (struct xgpio_instance*,int) ;

__attribute__((used)) static inline int xgpio_regoffset(struct xgpio_instance *chip, int gpio)
{
 if (xgpio_index(chip, gpio))
  return XGPIO_CHANNEL_OFFSET;

 return 0;
}
