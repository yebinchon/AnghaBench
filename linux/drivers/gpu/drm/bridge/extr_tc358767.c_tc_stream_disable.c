
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int regmap; int dev; } ;


 int DP0CTL ;
 int VID_EN ;
 int dev_dbg (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int tc_pxl_pll_dis (struct tc_data*) ;

__attribute__((used)) static int tc_stream_disable(struct tc_data *tc)
{
 int ret;

 dev_dbg(tc->dev, "disable video stream\n");

 ret = regmap_update_bits(tc->regmap, DP0CTL, VID_EN, 0);
 if (ret)
  return ret;

 tc_pxl_pll_dis(tc);

 return 0;
}
