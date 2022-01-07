
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa27x_keypad_platform_data {int (* clear_wakeup_event ) () ;} ;
struct pxa27x_keypad {struct pxa27x_keypad_platform_data* pdata; } ;


 int stub1 () ;

__attribute__((used)) static void clear_wakeup_event(struct pxa27x_keypad *keypad)
{
 const struct pxa27x_keypad_platform_data *pdata = keypad->pdata;

 if (pdata->clear_wakeup_event)
  (pdata->clear_wakeup_event)();
}
