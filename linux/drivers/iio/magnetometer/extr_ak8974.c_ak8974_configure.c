
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8974 {scalar_t__ variant; int map; } ;


 int AK8974_CTRL2 ;
 int AK8974_CTRL2_DRDY_EN ;
 int AK8974_CTRL2_INT_EN ;
 int AK8974_CTRL3 ;
 int AK8974_INT_CTRL ;
 int AK8974_INT_CTRL_POL ;
 int AK8974_PRESET ;
 scalar_t__ AK8974_WHOAMI_VALUE_AMI306 ;
 int AMI306_CTRL4 ;
 int ak8974_set_u16_val (struct ak8974*,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ak8974_configure(struct ak8974 *ak8974)
{
 int ret;

 ret = regmap_write(ak8974->map, AK8974_CTRL2, AK8974_CTRL2_DRDY_EN |
      AK8974_CTRL2_INT_EN);
 if (ret)
  return ret;
 ret = regmap_write(ak8974->map, AK8974_CTRL3, 0);
 if (ret)
  return ret;
 if (ak8974->variant == AK8974_WHOAMI_VALUE_AMI306) {

  ret = ak8974_set_u16_val(ak8974, AMI306_CTRL4, 0xA07E);
  if (ret)
   return ret;
 }
 ret = regmap_write(ak8974->map, AK8974_INT_CTRL, AK8974_INT_CTRL_POL);
 if (ret)
  return ret;

 return regmap_write(ak8974->map, AK8974_PRESET, 0);
}
