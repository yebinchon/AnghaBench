
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int regmap; int dev; } ;


 int DP0CTL ;
 int DP0_SRCCTRL ;
 int dev_dbg (int ,char*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int tc_main_link_disable(struct tc_data *tc)
{
 int ret;

 dev_dbg(tc->dev, "link disable\n");

 ret = regmap_write(tc->regmap, DP0_SRCCTRL, 0);
 if (ret)
  return ret;

 return regmap_write(tc->regmap, DP0CTL, 0);
}
