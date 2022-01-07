
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_extcon_info {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int axp288_handle_chrg_det_event (struct axp288_extcon_info*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t axp288_extcon_isr(int irq, void *data)
{
 struct axp288_extcon_info *info = data;
 int ret;

 ret = axp288_handle_chrg_det_event(info);
 if (ret < 0)
  dev_err(info->dev, "failed to handle the interrupt\n");

 return IRQ_HANDLED;
}
