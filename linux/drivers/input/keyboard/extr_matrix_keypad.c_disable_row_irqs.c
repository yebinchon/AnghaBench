
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {scalar_t__ clustered_irq; int num_row_gpios; int * row_gpios; } ;
struct matrix_keypad {struct matrix_keypad_platform_data* pdata; } ;


 int disable_irq_nosync (scalar_t__) ;
 scalar_t__ gpio_to_irq (int ) ;

__attribute__((used)) static void disable_row_irqs(struct matrix_keypad *keypad)
{
 const struct matrix_keypad_platform_data *pdata = keypad->pdata;
 int i;

 if (pdata->clustered_irq > 0)
  disable_irq_nosync(pdata->clustered_irq);
 else {
  for (i = 0; i < pdata->num_row_gpios; i++)
   disable_irq_nosync(gpio_to_irq(pdata->row_gpios[i]));
 }
}
