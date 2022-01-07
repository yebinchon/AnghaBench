
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ak8974 {int map; } ;


 int AK8974_ACTIVATE_DELAY ;
 int AK8974_CTRL1 ;
 int AK8974_CTRL1_FORCE_EN ;
 int AK8974_CTRL1_POWER ;
 int msleep (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ak8974_set_power(struct ak8974 *ak8974, bool mode)
{
 int ret;
 u8 val;

 val = mode ? AK8974_CTRL1_POWER : 0;
 val |= AK8974_CTRL1_FORCE_EN;
 ret = regmap_write(ak8974->map, AK8974_CTRL1, val);
 if (ret < 0)
  return ret;

 if (mode)
  msleep(AK8974_ACTIVATE_DELAY);

 return 0;
}
