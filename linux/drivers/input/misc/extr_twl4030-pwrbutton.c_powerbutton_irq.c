
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int PWR_PWRON_IRQ ;
 int STS_HW_CONDITIONS ;
 int TWL_MODULE_PM_MASTER ;
 int dev_err (int ,char*,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pm_wakeup_event (int ,int ) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;

__attribute__((used)) static irqreturn_t powerbutton_irq(int irq, void *_pwr)
{
 struct input_dev *pwr = _pwr;
 int err;
 u8 value;

 err = twl_i2c_read_u8(TWL_MODULE_PM_MASTER, &value, STS_HW_CONDITIONS);
 if (!err) {
  pm_wakeup_event(pwr->dev.parent, 0);
  input_report_key(pwr, KEY_POWER, value & PWR_PWRON_IRQ);
  input_sync(pwr);
 } else {
  dev_err(pwr->dev.parent, "twl4030: i2c error %d while reading"
   " TWL4030 PM_MASTER STS_HW_CONDITIONS register\n", err);
 }

 return IRQ_HANDLED;
}
