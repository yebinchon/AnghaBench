
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_keypad {int cols_en_mask; scalar_t__ mmio_base; } ;


 unsigned short KBD_STAT_KDIE ;
 unsigned short KBD_STAT_KPKD ;
 unsigned short KBD_STAT_KPKR ;
 unsigned short KBD_STAT_KRIE ;
 scalar_t__ KPCR ;
 scalar_t__ KPSR ;
 unsigned short readw (scalar_t__) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static void imx_keypad_inhibit(struct imx_keypad *keypad)
{
 unsigned short reg_val;


 reg_val = readw(keypad->mmio_base + KPSR);
 reg_val &= ~(KBD_STAT_KRIE | KBD_STAT_KDIE);
 reg_val |= KBD_STAT_KPKR | KBD_STAT_KPKD;
 writew(reg_val, keypad->mmio_base + KPSR);


 reg_val = (keypad->cols_en_mask & 0xff) << 8;
 writew(reg_val, keypad->mmio_base + KPCR);
}
