
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {scalar_t__ clustered_irq; int num_row_gpios; int num_col_gpios; int * col_gpios; int * row_gpios; } ;
struct matrix_keypad {struct matrix_keypad_platform_data* pdata; } ;


 int free_irq (scalar_t__,struct matrix_keypad*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_to_irq (int ) ;

__attribute__((used)) static void matrix_keypad_free_gpio(struct matrix_keypad *keypad)
{
 const struct matrix_keypad_platform_data *pdata = keypad->pdata;
 int i;

 if (pdata->clustered_irq > 0) {
  free_irq(pdata->clustered_irq, keypad);
 } else {
  for (i = 0; i < pdata->num_row_gpios; i++)
   free_irq(gpio_to_irq(pdata->row_gpios[i]), keypad);
 }

 for (i = 0; i < pdata->num_row_gpios; i++)
  gpio_free(pdata->row_gpios[i]);

 for (i = 0; i < pdata->num_col_gpios; i++)
  gpio_free(pdata->col_gpios[i]);
}
