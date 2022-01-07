
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa27x_keypad_platform_data {scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; } ;
struct pxa27x_keypad {struct pxa27x_keypad_platform_data* pdata; } ;


 int DEFAULT_KPREC ;
 int KPREC ;
 int keypad_readl (int ) ;
 int keypad_writel (int ,int ) ;
 int report_rotary_event (struct pxa27x_keypad*,int,int ) ;
 int rotary_delta (int) ;

__attribute__((used)) static void pxa27x_keypad_scan_rotary(struct pxa27x_keypad *keypad)
{
 const struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
 uint32_t kprec;


 kprec = keypad_readl(KPREC);
 keypad_writel(KPREC, DEFAULT_KPREC);

 if (pdata->enable_rotary0)
  report_rotary_event(keypad, 0, rotary_delta(kprec));

 if (pdata->enable_rotary1)
  report_rotary_event(keypad, 1, rotary_delta(kprec >> 16));
}
