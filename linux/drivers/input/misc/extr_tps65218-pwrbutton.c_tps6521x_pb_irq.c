
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6521x_pwrbutton {int idev; int dev; int regmap; struct tps6521x_data* data; } ;
struct tps6521x_data {unsigned int pb_mask; int reg_status; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int dev_err (int ,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pm_wakeup_event (int ,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t tps6521x_pb_irq(int irq, void *_pwr)
{
 struct tps6521x_pwrbutton *pwr = _pwr;
 const struct tps6521x_data *tps_data = pwr->data;
 unsigned int reg;
 int error;

 error = regmap_read(pwr->regmap, tps_data->reg_status, &reg);
 if (error) {
  dev_err(pwr->dev, "can't read register: %d\n", error);
  goto out;
 }

 if (reg & tps_data->pb_mask) {
  input_report_key(pwr->idev, KEY_POWER, 1);
  pm_wakeup_event(pwr->dev, 0);
 } else {
  input_report_key(pwr->idev, KEY_POWER, 0);
 }

 input_sync(pwr->idev);

out:
 return IRQ_HANDLED;
}
