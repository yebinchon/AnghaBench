
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nspire_keypad {unsigned long scan_interval; unsigned long row_delay; int int_mask; scalar_t__ reg_base; int clk; } ;


 int KEYPAD_BITMASK_COLS ;
 int KEYPAD_BITMASK_ROWS ;
 scalar_t__ KEYPAD_CNTL ;
 scalar_t__ KEYPAD_INTMSK ;
 scalar_t__ KEYPAD_SCAN_MODE ;
 scalar_t__ KEYPAD_UNKNOWN_INT ;
 scalar_t__ KEYPAD_UNKNOWN_INT_STS ;
 int WARN_ON (int) ;
 int clk_get_rate (int ) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int nspire_keypad_chip_init(struct nspire_keypad *keypad)
{
 unsigned long val = 0, cycles_per_us, delay_cycles, row_delay_cycles;

 cycles_per_us = (clk_get_rate(keypad->clk) / 1000000);
 if (cycles_per_us == 0)
  cycles_per_us = 1;

 delay_cycles = cycles_per_us * keypad->scan_interval;
 WARN_ON(delay_cycles >= (1 << 16));
 delay_cycles &= 0xffff;

 row_delay_cycles = cycles_per_us * keypad->row_delay;
 WARN_ON(row_delay_cycles >= (1 << 14));
 row_delay_cycles &= 0x3fff;

 val |= 3 << 0;
 val |= row_delay_cycles << 2;
 val |= delay_cycles << 16;
 writel(val, keypad->reg_base + KEYPAD_SCAN_MODE);

 val = (KEYPAD_BITMASK_ROWS & 0xff) | (KEYPAD_BITMASK_COLS & 0xff)<<8;
 writel(val, keypad->reg_base + KEYPAD_CNTL);


 keypad->int_mask = 1 << 1;
 writel(keypad->int_mask, keypad->reg_base + KEYPAD_INTMSK);



 writel(0, keypad->reg_base + KEYPAD_UNKNOWN_INT);

 writel(~0, keypad->reg_base + KEYPAD_UNKNOWN_INT_STS);

 return 0;
}
