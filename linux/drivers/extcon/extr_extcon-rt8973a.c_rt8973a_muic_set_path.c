
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt8973a_muic_info {int dev; int regmap; scalar_t__ auto_config; } ;





 int EINVAL ;
 int RT8973A_REG_MANUAL_SW1 ;
 int RT8973A_REG_MANUAL_SW1_DM_MASK ;
 int RT8973A_REG_MANUAL_SW1_DP_MASK ;
 int dev_err (int ,char*,...) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int rt8973a_muic_set_path(struct rt8973a_muic_info *info,
    unsigned int con_sw, bool attached)
{
 int ret;





 if (info->auto_config)
  return 0;

 if (!attached)
  con_sw = 129;

 switch (con_sw) {
 case 130:
 case 128:
 case 129:
  ret = regmap_update_bits(info->regmap, RT8973A_REG_MANUAL_SW1,
     RT8973A_REG_MANUAL_SW1_DP_MASK |
     RT8973A_REG_MANUAL_SW1_DM_MASK,
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
 }

 return 0;
}
