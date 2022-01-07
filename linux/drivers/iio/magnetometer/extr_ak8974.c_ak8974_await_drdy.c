
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak8974 {TYPE_1__* i2c; int map; int drdy_complete; scalar_t__ drdy_irq; } ;
struct TYPE_2__ {int dev; } ;


 int AK8974_MEASTIME ;
 int AK8974_STATUS ;
 unsigned int AK8974_STATUS_DRDY ;
 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int wait_for_completion_timeout (int *,scalar_t__) ;

__attribute__((used)) static int ak8974_await_drdy(struct ak8974 *ak8974)
{
 int timeout = 2;
 unsigned int val;
 int ret;

 if (ak8974->drdy_irq) {
  ret = wait_for_completion_timeout(&ak8974->drdy_complete,
     1 + msecs_to_jiffies(1000));
  if (!ret) {
   dev_err(&ak8974->i2c->dev,
    "timeout waiting for DRDY IRQ\n");
   return -ETIMEDOUT;
  }
  return 0;
 }


 do {
  msleep(AK8974_MEASTIME);
  ret = regmap_read(ak8974->map, AK8974_STATUS, &val);
  if (ret < 0)
   return ret;
  if (val & AK8974_STATUS_DRDY)
   return 0;
 } while (--timeout);

 dev_err(&ak8974->i2c->dev, "timeout waiting for DRDY\n");
 return -ETIMEDOUT;
}
