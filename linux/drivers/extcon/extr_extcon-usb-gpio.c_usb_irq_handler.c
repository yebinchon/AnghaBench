
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_extcon_info {int debounce_jiffies; int wq_detcable; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t usb_irq_handler(int irq, void *dev_id)
{
 struct usb_extcon_info *info = dev_id;

 queue_delayed_work(system_power_efficient_wq, &info->wq_detcable,
      info->debounce_jiffies);

 return IRQ_HANDLED;
}
