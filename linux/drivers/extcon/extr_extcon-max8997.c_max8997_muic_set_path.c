
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8997_muic_info {int dev; int muic; } ;


 int COMP_SW_MASK ;
 int CONTROL1_SW_OPEN ;
 int CONTROL2_CPEN_MASK ;
 int CONTROL2_LOWPWR_MASK ;
 int MAX8997_MUIC_REG_CONTROL1 ;
 int MAX8997_MUIC_REG_CONTROL2 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,int,char*) ;
 int max8997_update_reg (int ,int ,int,int) ;

__attribute__((used)) static int max8997_muic_set_path(struct max8997_muic_info *info,
  u8 val, bool attached)
{
 int ret;
 u8 ctrl1, ctrl2 = 0;

 if (attached)
  ctrl1 = val;
 else
  ctrl1 = CONTROL1_SW_OPEN;

 ret = max8997_update_reg(info->muic,
   MAX8997_MUIC_REG_CONTROL1, ctrl1, COMP_SW_MASK);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 if (attached)
  ctrl2 |= CONTROL2_CPEN_MASK;
 else
  ctrl2 |= CONTROL2_LOWPWR_MASK;

 ret = max8997_update_reg(info->muic,
   MAX8997_MUIC_REG_CONTROL2, ctrl2,
   CONTROL2_LOWPWR_MASK | CONTROL2_CPEN_MASK);
 if (ret < 0) {
  dev_err(info->dev, "failed to update MUIC register\n");
  return ret;
 }

 dev_info(info->dev,
  "CONTROL1 : 0x%02x, CONTROL2 : 0x%02x, state : %s\n",
  ctrl1, ctrl2, attached ? "attached" : "detached");

 return 0;
}
