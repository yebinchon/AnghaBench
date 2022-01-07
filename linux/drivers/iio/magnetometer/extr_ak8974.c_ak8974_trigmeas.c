
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ak8974 {int map; int drdy_complete; int drdy_active_low; scalar_t__ drdy_irq; } ;


 int AK8974_CTRL2 ;
 int AK8974_CTRL2_DRDY_EN ;
 int AK8974_CTRL2_DRDY_POL ;
 int AK8974_CTRL2_INT_EN ;
 int AK8974_CTRL3 ;
 int AK8974_CTRL3_FORCE ;
 int AK8974_INT_CLEAR ;
 int init_completion (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ak8974_trigmeas(struct ak8974 *ak8974)
{
 unsigned int clear;
 u8 mask;
 u8 val;
 int ret;


 ret = regmap_read(ak8974->map, AK8974_INT_CLEAR, &clear);
 if (ret)
  return ret;


 if (ak8974->drdy_irq) {
  mask = AK8974_CTRL2_INT_EN |
   AK8974_CTRL2_DRDY_EN |
   AK8974_CTRL2_DRDY_POL;
  val = AK8974_CTRL2_DRDY_EN;

  if (!ak8974->drdy_active_low)
   val |= AK8974_CTRL2_DRDY_POL;

  init_completion(&ak8974->drdy_complete);
  ret = regmap_update_bits(ak8974->map, AK8974_CTRL2,
      mask, val);
  if (ret)
   return ret;
 }


 return regmap_update_bits(ak8974->map,
      AK8974_CTRL3,
      AK8974_CTRL3_FORCE,
      AK8974_CTRL3_FORCE);
}
