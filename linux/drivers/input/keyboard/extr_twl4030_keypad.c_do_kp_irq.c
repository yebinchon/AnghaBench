
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_keypad {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEYP_IMR1_KP ;
 int KEYP_ISR1 ;
 int twl4030_kp_scan (struct twl4030_keypad*,int) ;
 int twl4030_kpread (struct twl4030_keypad*,int*,int ,int) ;

__attribute__((used)) static irqreturn_t do_kp_irq(int irq, void *_kp)
{
 struct twl4030_keypad *kp = _kp;
 u8 reg;
 int ret;


 ret = twl4030_kpread(kp, &reg, KEYP_ISR1, 1);





 if (ret >= 0 && (reg & KEYP_IMR1_KP))
  twl4030_kp_scan(kp, 0);
 else
  twl4030_kp_scan(kp, 1);

 return IRQ_HANDLED;
}
