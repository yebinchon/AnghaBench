
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_gpio_pin {int pin; } ;
struct dln2_gpio {int pdev; } ;
typedef int req ;


 int cpu_to_le16 (unsigned int) ;
 int dln2_transfer_tx (int ,int,struct dln2_gpio_pin*,int) ;

__attribute__((used)) static int dln2_gpio_pin_cmd(struct dln2_gpio *dln2, int cmd, unsigned pin)
{
 struct dln2_gpio_pin req = {
  .pin = cpu_to_le16(pin),
 };

 return dln2_transfer_tx(dln2->pdev, cmd, &req, sizeof(req));
}
