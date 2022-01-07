
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ dev; } ;
struct tc_data {scalar_t__ hpd_pin; int regmap; TYPE_1__ bridge; int dev; } ;
typedef int irqreturn_t ;


 int INTSTS_G ;
 int INT_GPIO_H (scalar_t__) ;
 int INT_GPIO_LC (scalar_t__) ;
 int INT_SYSERR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SYSSTAT ;
 int dev_dbg (int ,char*,scalar_t__,char*,char*) ;
 int dev_err (int ,char*,int) ;
 int drm_kms_helper_hotplug_event (scalar_t__) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t tc_irq_handler(int irq, void *arg)
{
 struct tc_data *tc = arg;
 u32 val;
 int r;

 r = regmap_read(tc->regmap, INTSTS_G, &val);
 if (r)
  return IRQ_NONE;

 if (!val)
  return IRQ_NONE;

 if (val & INT_SYSERR) {
  u32 stat = 0;

  regmap_read(tc->regmap, SYSSTAT, &stat);

  dev_err(tc->dev, "syserr %x\n", stat);
 }

 if (tc->hpd_pin >= 0 && tc->bridge.dev) {






  bool h = val & INT_GPIO_H(tc->hpd_pin);
  bool lc = val & INT_GPIO_LC(tc->hpd_pin);

  dev_dbg(tc->dev, "GPIO%d: %s %s\n", tc->hpd_pin,
   h ? "H" : "", lc ? "LC" : "");

  if (h || lc)
   drm_kms_helper_hotplug_event(tc->bridge.dev);
 }

 regmap_write(tc->regmap, INTSTS_G, val);

 return IRQ_HANDLED;
}
