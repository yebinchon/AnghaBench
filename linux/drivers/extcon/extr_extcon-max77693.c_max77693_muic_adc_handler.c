
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int prev_button_type; int dev; int prev_cable_type; } ;


 int EAGAIN ;
 int EINVAL ;
 int MAX77693_CABLE_GROUP_ADC ;
 int dev_err (int ,char*,char*,int) ;
 int dev_info (int ,char*,char*,int,...) ;
 int max77693_muic_adc_ground_handler (struct max77693_muic_info*) ;
 int max77693_muic_dock_button_handler (struct max77693_muic_info*,int,int) ;
 int max77693_muic_dock_handler (struct max77693_muic_info*,int,int) ;
 int max77693_muic_get_cable_type (struct max77693_muic_info*,int ,int*) ;
 int max77693_muic_jig_handler (struct max77693_muic_info*,int,int) ;

__attribute__((used)) static int max77693_muic_adc_handler(struct max77693_muic_info *info)
{
 int cable_type;
 int button_type;
 bool attached;
 int ret = 0;


 cable_type = max77693_muic_get_cable_type(info,
    MAX77693_CABLE_GROUP_ADC, &attached);

 dev_info(info->dev,
  "external connector is %s (adc:0x%02x, prev_adc:0x%x)\n",
  attached ? "attached" : "detached", cable_type,
  info->prev_cable_type);

 switch (cable_type) {
 case 149:

  max77693_muic_adc_ground_handler(info);
  break;
 case 151:
 case 150:
 case 153:
 case 152:

  ret = max77693_muic_jig_handler(info, cable_type, attached);
  if (ret < 0)
   return ret;
  break;
 case 133:
 case 158:
 case 157:
  ret = max77693_muic_dock_handler(info, cable_type, attached);
  if (ret < 0)
   return ret;
  break;
 case 142:
 case 138:
 case 136:
 case 147:
 case 145:
  if (attached)
   button_type = info->prev_button_type = cable_type;
  else
   button_type = info->prev_button_type;

  ret = max77693_muic_dock_button_handler(info, button_type,
       attached);
  if (ret < 0)
   return ret;
  break;
 case 130:
 case 144:
 case 143:
 case 141:
 case 140:
 case 139:
 case 137:
 case 146:
 case 135:
 case 134:
 case 132:
 case 131:
 case 154:
 case 148:
 case 129:
 case 128:
 case 156:
 case 155:





  dev_info(info->dev,
   "accessory is %s but it isn't used (adc:0x%x)\n",
   attached ? "attached" : "detached", cable_type);
  return -EAGAIN;
 default:
  dev_err(info->dev,
   "failed to detect %s accessory (adc:0x%x)\n",
   attached ? "attached" : "detached", cable_type);
  return -EINVAL;
 }

 return 0;
}
