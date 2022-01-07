
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max14577_muic_info {int dev; TYPE_1__* max14577; } ;
struct TYPE_2__ {int regmap; } ;


 int CLEAR_IDBEN_MICEN_MASK ;
 int CTRL1_SW_OPEN ;
 int CTRL2_CPEN_MASK ;
 int CTRL2_LOWPWR_MASK ;
 int MAX14577_MUIC_REG_CONTROL1 ;
 int MAX14577_REG_CONTROL2 ;
 int dev_dbg (int ,char*,int,int,char*) ;
 int dev_err (int ,char*) ;
 int max14577_update_reg (int ,int ,int,int) ;

__attribute__((used)) static int max14577_muic_set_path(struct max14577_muic_info *info,
  u8 val, bool attached)
{
 u8 ctrl1, ctrl2 = 0;
 int ret;


 ret = max14577_update_reg(info->max14577->regmap,
    MAX14577_MUIC_REG_CONTROL1,
    CLEAR_IDBEN_MICEN_MASK, CTRL1_SW_OPEN);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 if (attached)
  ctrl1 = val;
 else
  ctrl1 = CTRL1_SW_OPEN;

 ret = max14577_update_reg(info->max14577->regmap,
    MAX14577_MUIC_REG_CONTROL1,
    CLEAR_IDBEN_MICEN_MASK, ctrl1);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 if (attached)
  ctrl2 |= CTRL2_CPEN_MASK;
 else
  ctrl2 |= CTRL2_LOWPWR_MASK;

 ret = max14577_update_reg(info->max14577->regmap,
   MAX14577_REG_CONTROL2,
   CTRL2_LOWPWR_MASK | CTRL2_CPEN_MASK, ctrl2);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 dev_dbg(info->dev,
  "CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\n",
  ctrl1, ctrl2, attached ? "attached" : "detached");

 return 0;
}
