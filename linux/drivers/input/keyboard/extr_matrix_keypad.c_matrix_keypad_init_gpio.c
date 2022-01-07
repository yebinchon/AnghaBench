
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct matrix_keypad_platform_data {int num_col_gpios; int num_row_gpios; scalar_t__ clustered_irq; int clustered_irq_flags; int * col_gpios; int * row_gpios; int active_low; } ;
struct matrix_keypad {struct matrix_keypad_platform_data* pdata; } ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int dev_err (int *,char*,...) ;
 int disable_row_irqs (struct matrix_keypad*) ;
 int free_irq (scalar_t__,struct matrix_keypad*) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 scalar_t__ gpio_to_irq (int ) ;
 int matrix_keypad_interrupt ;
 int request_any_context_irq (scalar_t__,int ,int,char*,struct matrix_keypad*) ;

__attribute__((used)) static int matrix_keypad_init_gpio(struct platform_device *pdev,
       struct matrix_keypad *keypad)
{
 const struct matrix_keypad_platform_data *pdata = keypad->pdata;
 int i, err;


 for (i = 0; i < pdata->num_col_gpios; i++) {
  err = gpio_request(pdata->col_gpios[i], "matrix_kbd_col");
  if (err) {
   dev_err(&pdev->dev,
    "failed to request GPIO%d for COL%d\n",
    pdata->col_gpios[i], i);
   goto err_free_cols;
  }

  gpio_direction_output(pdata->col_gpios[i], !pdata->active_low);
 }

 for (i = 0; i < pdata->num_row_gpios; i++) {
  err = gpio_request(pdata->row_gpios[i], "matrix_kbd_row");
  if (err) {
   dev_err(&pdev->dev,
    "failed to request GPIO%d for ROW%d\n",
    pdata->row_gpios[i], i);
   goto err_free_rows;
  }

  gpio_direction_input(pdata->row_gpios[i]);
 }

 if (pdata->clustered_irq > 0) {
  err = request_any_context_irq(pdata->clustered_irq,
    matrix_keypad_interrupt,
    pdata->clustered_irq_flags,
    "matrix-keypad", keypad);
  if (err < 0) {
   dev_err(&pdev->dev,
    "Unable to acquire clustered interrupt\n");
   goto err_free_rows;
  }
 } else {
  for (i = 0; i < pdata->num_row_gpios; i++) {
   err = request_any_context_irq(
     gpio_to_irq(pdata->row_gpios[i]),
     matrix_keypad_interrupt,
     IRQF_TRIGGER_RISING |
     IRQF_TRIGGER_FALLING,
     "matrix-keypad", keypad);
   if (err < 0) {
    dev_err(&pdev->dev,
     "Unable to acquire interrupt for GPIO line %i\n",
     pdata->row_gpios[i]);
    goto err_free_irqs;
   }
  }
 }


 disable_row_irqs(keypad);
 return 0;

err_free_irqs:
 while (--i >= 0)
  free_irq(gpio_to_irq(pdata->row_gpios[i]), keypad);
 i = pdata->num_row_gpios;
err_free_rows:
 while (--i >= 0)
  gpio_free(pdata->row_gpios[i]);
 i = pdata->num_col_gpios;
err_free_cols:
 while (--i >= 0)
  gpio_free(pdata->col_gpios[i]);

 return err;
}
