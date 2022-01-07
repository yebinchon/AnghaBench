
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;
typedef int irqreturn_t ;


 int CHT_WC_PWRSRC_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cht_wc_extcon_pwrsrc_event (struct cht_wc_extcon_data*) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t cht_wc_extcon_isr(int irq, void *data)
{
 struct cht_wc_extcon_data *ext = data;
 int ret, irqs;

 ret = regmap_read(ext->regmap, CHT_WC_PWRSRC_IRQ, &irqs);
 if (ret) {
  dev_err(ext->dev, "Error reading irqs: %d\n", ret);
  return IRQ_NONE;
 }

 cht_wc_extcon_pwrsrc_event(ext);

 ret = regmap_write(ext->regmap, CHT_WC_PWRSRC_IRQ, irqs);
 if (ret) {
  dev_err(ext->dev, "Error writing irqs: %d\n", ret);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
