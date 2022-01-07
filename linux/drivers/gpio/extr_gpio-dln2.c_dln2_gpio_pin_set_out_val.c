
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_gpio_pin_val {int value; int pin; } ;
struct dln2_gpio {int pdev; } ;
typedef int req ;


 int DLN2_GPIO_PIN_SET_OUT_VAL ;
 int cpu_to_le16 (unsigned int) ;
 int dln2_transfer_tx (int ,int ,struct dln2_gpio_pin_val*,int) ;

__attribute__((used)) static int dln2_gpio_pin_set_out_val(struct dln2_gpio *dln2,
         unsigned int pin, int value)
{
 struct dln2_gpio_pin_val req = {
  .pin = cpu_to_le16(pin),
  .value = value,
 };

 return dln2_transfer_tx(dln2->pdev, DLN2_GPIO_PIN_SET_OUT_VAL, &req,
    sizeof(req));
}
