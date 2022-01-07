
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_muic_info {int dev; int prev_cable_type; } ;


 int EAGAIN ;
 int EINVAL ;
 int MAX14577_CABLE_GROUP_ADC ;
 int dev_dbg (int ,char*,char*,int,int ) ;
 int dev_err (int ,char*,char*,int) ;
 int dev_info (int ,char*,char*,int) ;
 int max14577_muic_get_cable_type (struct max14577_muic_info*,int ,int*) ;
 int max14577_muic_jig_handler (struct max14577_muic_info*,int,int) ;

__attribute__((used)) static int max14577_muic_adc_handler(struct max14577_muic_info *info)
{
 int cable_type;
 bool attached;
 int ret = 0;


 cable_type = max14577_muic_get_cable_type(info,
    MAX14577_CABLE_GROUP_ADC, &attached);

 dev_dbg(info->dev,
  "external connector is %s (adc:0x%02x, prev_adc:0x%x)\n",
  attached ? "attached" : "detached", cable_type,
  info->prev_cable_type);

 switch (cable_type) {
 case 151:
 case 150:
 case 153:

  ret = max14577_muic_jig_handler(info, cable_type, attached);
  if (ret < 0)
   return ret;
  break;
 case 149:
 case 130:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 147:
 case 146:
 case 145:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 157:
 case 148:
 case 129:
 case 128:
 case 155:
 case 156:
 case 154:
 case 152:
 case 158:





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
