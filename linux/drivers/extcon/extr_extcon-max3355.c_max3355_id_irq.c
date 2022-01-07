
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max3355_data {int edev; int id_gpiod; } ;
typedef int irqreturn_t ;


 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 int IRQ_HANDLED ;
 int extcon_set_state_sync (int ,int ,int) ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static irqreturn_t max3355_id_irq(int irq, void *dev_id)
{
 struct max3355_data *data = dev_id;
 int id = gpiod_get_value_cansleep(data->id_gpiod);

 if (id) {





  extcon_set_state_sync(data->edev, EXTCON_USB_HOST, 0);
  extcon_set_state_sync(data->edev, EXTCON_USB, 1);
 } else {





  extcon_set_state_sync(data->edev, EXTCON_USB, 0);
  extcon_set_state_sync(data->edev, EXTCON_USB_HOST, 1);
 }

 return IRQ_HANDLED;
}
