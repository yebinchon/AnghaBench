
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gpio_chip {unsigned int ngpio; } ;


 int EINVAL ;
 int GIUIOSELH ;
 int GIUIOSELL ;
 int GIUPODATEN ;
 int GIUPODATH ;
 int GPIO_HAS_OUTPUT_ENABLE ;
 int GPIO_OUTPUT ;
 int PIOEN0 ;
 int PIOEN1 ;
 int giu_flags ;
 int giu_lock ;
 int giu_read (int) ;
 int giu_write (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int giu_set_direction(struct gpio_chip *chip, unsigned pin, int dir)
{
 u16 offset, mask, reg;
 unsigned long flags;

 if (pin >= chip->ngpio)
  return -EINVAL;

 if (pin < 16) {
  offset = GIUIOSELL;
  mask = 1 << pin;
 } else if (pin < 32) {
  offset = GIUIOSELH;
  mask = 1 << (pin - 16);
 } else {
  if (giu_flags & GPIO_HAS_OUTPUT_ENABLE) {
   offset = GIUPODATEN;
   mask = 1 << (pin - 32);
  } else {
   switch (pin) {
   case 48:
    offset = GIUPODATH;
    mask = PIOEN0;
    break;
   case 49:
    offset = GIUPODATH;
    mask = PIOEN1;
    break;
   default:
    return -EINVAL;
   }
  }
 }

 spin_lock_irqsave(&giu_lock, flags);

 reg = giu_read(offset);
 if (dir == GPIO_OUTPUT)
  reg |= mask;
 else
  reg &= ~mask;
 giu_write(offset, reg);

 spin_unlock_irqrestore(&giu_lock, flags);

 return 0;
}
