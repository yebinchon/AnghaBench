
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8974 {int map; } ;


 int AK8974_CTRL2 ;
 int AK8974_CTRL2_RESDEF ;
 int AK8974_CTRL3 ;
 int AK8974_CTRL3_RESDEF ;
 int AK8974_INT_CTRL ;
 int AK8974_INT_CTRL_RESDEF ;
 int AK8974_PWR_OFF ;
 int AK8974_PWR_ON ;
 int ak8974_set_power (struct ak8974*,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ak8974_reset(struct ak8974 *ak8974)
{
 int ret;


 ret = ak8974_set_power(ak8974, AK8974_PWR_ON);
 if (ret)
  return ret;
 ret = regmap_write(ak8974->map, AK8974_CTRL2, AK8974_CTRL2_RESDEF);
 if (ret)
  return ret;
 ret = regmap_write(ak8974->map, AK8974_CTRL3, AK8974_CTRL3_RESDEF);
 if (ret)
  return ret;
 ret = regmap_write(ak8974->map, AK8974_INT_CTRL,
      AK8974_INT_CTRL_RESDEF);
 if (ret)
  return ret;


 return ak8974_set_power(ak8974, AK8974_PWR_OFF);
}
