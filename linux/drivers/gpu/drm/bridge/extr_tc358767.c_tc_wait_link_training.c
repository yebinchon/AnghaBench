
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_data {int regmap; int dev; } ;


 int DP0_LTSTAT ;
 int LT_LOOPDONE ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int tc_poll_timeout (struct tc_data*,int ,int ,int ,int,int) ;

__attribute__((used)) static int tc_wait_link_training(struct tc_data *tc)
{
 u32 value;
 int ret;

 ret = tc_poll_timeout(tc, DP0_LTSTAT, LT_LOOPDONE,
         LT_LOOPDONE, 1, 1000);
 if (ret) {
  dev_err(tc->dev, "Link training timeout waiting for LT_LOOPDONE!\n");
  return ret;
 }

 ret = regmap_read(tc->regmap, DP0_LTSTAT, &value);
 if (ret)
  return ret;

 return (value >> 8) & 0x7;
}
