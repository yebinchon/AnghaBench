
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_usb {int sw_debounce_jiffies; int wq_detectid; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t palmas_gpio_id_irq_handler(int irq, void *_palmas_usb)
{
 struct palmas_usb *palmas_usb = _palmas_usb;

 queue_delayed_work(system_power_efficient_wq, &palmas_usb->wq_detectid,
      palmas_usb->sw_debounce_jiffies);

 return IRQ_HANDLED;
}
