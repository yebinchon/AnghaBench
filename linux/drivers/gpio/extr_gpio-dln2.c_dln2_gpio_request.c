
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dln2_gpio_pin_val {scalar_t__ pin; int value; } ;
struct dln2_gpio_pin {scalar_t__ pin; } ;
struct dln2_gpio {int output_enabled; int pdev; } ;
typedef int rsp ;
typedef int req ;




 int DLN2_GPIO_PIN_DISABLE ;
 int DLN2_GPIO_PIN_ENABLE ;
 int DLN2_GPIO_PIN_GET_DIRECTION ;
 int EPROTO ;
 int clear_bit (unsigned int,int ) ;
 scalar_t__ cpu_to_le16 (unsigned int) ;
 int dln2_gpio_pin_cmd (struct dln2_gpio*,int ,unsigned int) ;
 int dln2_transfer (int ,int ,struct dln2_gpio_pin*,int,struct dln2_gpio_pin_val*,int*) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static int dln2_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct dln2_gpio *dln2 = gpiochip_get_data(chip);
 struct dln2_gpio_pin req = {
  .pin = cpu_to_le16(offset),
 };
 struct dln2_gpio_pin_val rsp;
 int len = sizeof(rsp);
 int ret;

 ret = dln2_gpio_pin_cmd(dln2, DLN2_GPIO_PIN_ENABLE, offset);
 if (ret < 0)
  return ret;


 ret = dln2_transfer(dln2->pdev, DLN2_GPIO_PIN_GET_DIRECTION,
       &req, sizeof(req), &rsp, &len);
 if (ret < 0)
  return ret;
 if (len < sizeof(rsp) || req.pin != rsp.pin) {
  ret = -EPROTO;
  goto out_disable;
 }

 switch (rsp.value) {
 case 129:
  clear_bit(offset, dln2->output_enabled);
  return 0;
 case 128:
  set_bit(offset, dln2->output_enabled);
  return 0;
 default:
  ret = -EPROTO;
  goto out_disable;
 }

out_disable:
 dln2_gpio_pin_cmd(dln2, DLN2_GPIO_PIN_DISABLE, offset);
 return ret;
}
