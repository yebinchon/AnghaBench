
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as5011_device {int input_dev; int button_gpio; } ;
typedef int irqreturn_t ;


 int BTN_JOYSTICK ;
 int IRQ_HANDLED ;
 int gpio_get_value_cansleep (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t as5011_button_interrupt(int irq, void *dev_id)
{
 struct as5011_device *as5011 = dev_id;
 int val = gpio_get_value_cansleep(as5011->button_gpio);

 input_report_key(as5011->input_dev, BTN_JOYSTICK, !val);
 input_sync(as5011->input_dev);

 return IRQ_HANDLED;
}
