
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ irq_level_t ;


 int GIUINTALSELH ;
 int GIUINTALSELL ;
 int GIUINTSTATH ;
 int GIUINTSTATL ;
 unsigned int GIUINT_HIGH_MAX ;
 unsigned int GIUINT_HIGH_OFFSET ;
 scalar_t__ IRQ_LEVEL_HIGH ;
 int giu_clear (int ,int) ;
 int giu_set (int ,int) ;
 int giu_write (int ,int) ;

void vr41xx_set_irq_level(unsigned int pin, irq_level_t level)
{
 u16 mask;

 if (pin < GIUINT_HIGH_OFFSET) {
  mask = 1 << pin;
  if (level == IRQ_LEVEL_HIGH)
   giu_set(GIUINTALSELL, mask);
  else
   giu_clear(GIUINTALSELL, mask);
  giu_write(GIUINTSTATL, mask);
 } else if (pin < GIUINT_HIGH_MAX) {
  mask = 1 << (pin - GIUINT_HIGH_OFFSET);
  if (level == IRQ_LEVEL_HIGH)
   giu_set(GIUINTALSELH, mask);
  else
   giu_clear(GIUINTALSELH, mask);
  giu_write(GIUINTSTATH, mask);
 }
}
