
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ak8974 {int map; TYPE_1__* i2c; } ;
struct TYPE_2__ {struct device dev; } ;


 int AK8974_CTRL3 ;
 int AK8974_CTRL3_SELFTEST ;
 int AK8974_SELFTEST ;
 int AK8974_SELFTEST_DELAY ;
 unsigned int AK8974_SELFTEST_IDLE ;
 unsigned int AK8974_SELFTEST_OK ;
 int EIO ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ak8974_selftest(struct ak8974 *ak8974)
{
 struct device *dev = &ak8974->i2c->dev;
 unsigned int val;
 int ret;

 ret = regmap_read(ak8974->map, AK8974_SELFTEST, &val);
 if (ret)
  return ret;
 if (val != AK8974_SELFTEST_IDLE) {
  dev_err(dev, "selftest not idle before test\n");
  return -EIO;
 }


 ret = regmap_update_bits(ak8974->map,
   AK8974_CTRL3,
   AK8974_CTRL3_SELFTEST,
   AK8974_CTRL3_SELFTEST);
 if (ret) {
  dev_err(dev, "could not write CTRL3\n");
  return ret;
 }

 msleep(AK8974_SELFTEST_DELAY);

 ret = regmap_read(ak8974->map, AK8974_SELFTEST, &val);
 if (ret)
  return ret;
 if (val != AK8974_SELFTEST_OK) {
  dev_err(dev, "selftest result NOT OK (%02x)\n", val);
  return -EIO;
 }

 ret = regmap_read(ak8974->map, AK8974_SELFTEST, &val);
 if (ret)
  return ret;
 if (val != AK8974_SELFTEST_IDLE) {
  dev_err(dev, "selftest not idle after test (%02x)\n", val);
  return -EIO;
 }
 dev_dbg(dev, "passed self-test\n");

 return 0;
}
