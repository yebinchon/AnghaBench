
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct omap4_keypad {scalar_t__ irqreg_offset; scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static int kbd_read_irqreg(struct omap4_keypad *keypad_data, u32 offset)
{
 return __raw_readl(keypad_data->base +
    keypad_data->irqreg_offset + offset);
}
