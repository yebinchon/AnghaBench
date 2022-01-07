
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_power_button {int idev; int dev; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int cpcap_sense_virq (int ,int) ;
 int dev_err (int ,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t powerbutton_irq(int irq, void *_button)
{
 struct cpcap_power_button *button = _button;
 int val;

 val = cpcap_sense_virq(button->regmap, irq);
 if (val < 0) {
  dev_err(button->dev, "irq read failed: %d", val);
  return IRQ_HANDLED;
 }

 pm_wakeup_event(button->dev, 0);
 input_report_key(button->idev, KEY_POWER, val);
 input_sync(button->idev);

 return IRQ_HANDLED;
}
