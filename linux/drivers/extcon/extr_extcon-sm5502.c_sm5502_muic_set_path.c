
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm5502_muic_info {int dev; int regmap; } ;






 int EINVAL ;
 int SM5502_REG_MANUAL_SW1 ;
 int SM5502_REG_MANUAL_SW1_DM_MASK ;
 int SM5502_REG_MANUAL_SW1_DP_MASK ;
 int SM5502_REG_MANUAL_SW1_VBUSIN_MASK ;




 int dev_err (int ,char*,...) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int sm5502_muic_set_path(struct sm5502_muic_info *info,
    unsigned int con_sw, unsigned int vbus_sw,
    bool attached)
{
 int ret;

 if (!attached) {
  con_sw = 134;
  vbus_sw = 130;
 }

 switch (con_sw) {
 case 134:
 case 132:
 case 135:
 case 133:
  ret = regmap_update_bits(info->regmap, SM5502_REG_MANUAL_SW1,
      SM5502_REG_MANUAL_SW1_DP_MASK |
      SM5502_REG_MANUAL_SW1_DM_MASK,
      con_sw);
  if (ret < 0) {
   dev_err(info->dev,
    "cannot update DM_CON/DP_CON switch\n");
   return ret;
  }
  break;
 default:
  dev_err(info->dev, "Unknown DM_CON/DP_CON switch type (%d)\n",
    con_sw);
  return -EINVAL;
 };

 switch (vbus_sw) {
 case 130:
 case 129:
 case 131:
 case 128:
  ret = regmap_update_bits(info->regmap, SM5502_REG_MANUAL_SW1,
      SM5502_REG_MANUAL_SW1_VBUSIN_MASK,
      vbus_sw);
  if (ret < 0) {
   dev_err(info->dev,
    "cannot update VBUSIN switch\n");
   return ret;
  }
  break;
 default:
  dev_err(info->dev, "Unknown VBUS switch type (%d)\n", vbus_sw);
  return -EINVAL;
 };

 return 0;
}
