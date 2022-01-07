
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct max77693_muic_info {int dev; TYPE_1__* max77693; } ;
struct TYPE_2__ {int regmap_muic; } ;


 unsigned int COMP_SW_MASK ;
 unsigned int MAX77693_CONTROL1_SW_OPEN ;
 unsigned int MAX77693_CONTROL2_CPEN_MASK ;
 unsigned int MAX77693_CONTROL2_LOWPWR_MASK ;
 int MAX77693_MUIC_REG_CTRL1 ;
 int MAX77693_MUIC_REG_CTRL2 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int,unsigned int,char*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int max77693_muic_set_path(struct max77693_muic_info *info,
  u8 val, bool attached)
{
 int ret;
 unsigned int ctrl1, ctrl2 = 0;

 if (attached)
  ctrl1 = val;
 else
  ctrl1 = MAX77693_CONTROL1_SW_OPEN;

 ret = regmap_update_bits(info->max77693->regmap_muic,
   MAX77693_MUIC_REG_CTRL1, COMP_SW_MASK, ctrl1);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 if (attached)
  ctrl2 |= MAX77693_CONTROL2_CPEN_MASK;
 else
  ctrl2 |= MAX77693_CONTROL2_LOWPWR_MASK;

 ret = regmap_update_bits(info->max77693->regmap_muic,
   MAX77693_MUIC_REG_CTRL2,
   MAX77693_CONTROL2_LOWPWR_MASK | MAX77693_CONTROL2_CPEN_MASK,
   ctrl2);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 dev_info(info->dev,
  "CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\n",
  ctrl1, ctrl2, attached ? "attached" : "detached");

 return 0;
}
