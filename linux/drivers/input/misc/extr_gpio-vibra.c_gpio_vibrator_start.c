
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_vibrator {int vcc_on; int gpio; int vcc; TYPE_2__* input; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_err (struct device*,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int gpio_vibrator_start(struct gpio_vibrator *vibrator)
{
 struct device *pdev = vibrator->input->dev.parent;
 int err;

 if (!vibrator->vcc_on) {
  err = regulator_enable(vibrator->vcc);
  if (err) {
   dev_err(pdev, "failed to enable regulator: %d\n", err);
   return err;
  }
  vibrator->vcc_on = 1;
 }

 gpiod_set_value_cansleep(vibrator->gpio, 1);

 return 0;
}
