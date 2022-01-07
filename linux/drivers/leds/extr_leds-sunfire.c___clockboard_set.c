
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunfire_led {int reg; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;



 struct sunfire_led* to_sunfire_led (struct led_classdev*) ;
 int upa_readb (int ) ;
 int upa_writeb (int,int ) ;

__attribute__((used)) static void __clockboard_set(struct led_classdev *led_cdev,
        enum led_brightness led_val, u8 bit)
{
 struct sunfire_led *p = to_sunfire_led(led_cdev);
 u8 reg = upa_readb(p->reg);

 switch (bit) {
 case 128:
  if (led_val)
   reg &= ~bit;
  else
   reg |= bit;
  break;

 default:
  if (led_val)
   reg |= bit;
  else
   reg &= ~bit;
  break;
 }
 upa_writeb(reg, p->reg);
}
