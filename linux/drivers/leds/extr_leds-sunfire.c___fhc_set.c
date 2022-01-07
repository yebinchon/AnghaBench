
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunfire_led {int reg; } ;
struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;



 struct sunfire_led* to_sunfire_led (struct led_classdev*) ;
 int upa_readl (int ) ;
 int upa_writel (int,int ) ;

__attribute__((used)) static void __fhc_set(struct led_classdev *led_cdev,
        enum led_brightness led_val, u32 bit)
{
 struct sunfire_led *p = to_sunfire_led(led_cdev);
 u32 reg = upa_readl(p->reg);

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
 upa_writel(reg, p->reg);
}
