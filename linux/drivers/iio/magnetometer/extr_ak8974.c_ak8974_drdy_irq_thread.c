
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak8974 {int drdy_complete; TYPE_1__* i2c; int map; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int AK8974_STATUS ;
 unsigned int AK8974_STATUS_DRDY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t ak8974_drdy_irq_thread(int irq, void *d)
{
 struct ak8974 *ak8974 = d;
 unsigned int val;
 int ret;


 ret = regmap_read(ak8974->map, AK8974_STATUS, &val);
 if (ret < 0) {
  dev_err(&ak8974->i2c->dev, "error reading DRDY status\n");
  return IRQ_HANDLED;
 }
 if (val & AK8974_STATUS_DRDY) {

  complete(&ak8974->drdy_complete);
  return IRQ_HANDLED;
 }


 return IRQ_NONE;
}
