
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {int dev; int edev; int prev_chg_type; } ;


 int EINVAL ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_FAST ;
 int EXTCON_CHG_USB_SDP ;
 int EXTCON_CHG_USB_SLOW ;
 int EXTCON_USB ;
 int MAX77843_CABLE_GROUP_ADC_GND ;
 int MAX77843_CABLE_GROUP_CHG ;
 int MAX77843_MUIC_CONTROL1_SW_OPEN ;
 int MAX77843_MUIC_CONTROL1_SW_USB ;
 int MAX77843_MUIC_GND_MHL ;
 int MAX77843_MUIC_GND_MHL_VB ;
 int dev_dbg (int ,char*,char*,int,int ) ;
 int dev_err (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77843_muic_get_cable_type (struct max77843_muic_info*,int ,int*) ;
 int max77843_muic_set_path (struct max77843_muic_info*,int ,int,int) ;

__attribute__((used)) static int max77843_muic_chg_handler(struct max77843_muic_info *info)
{
 int ret, chg_type, gnd_type;
 bool attached;

 chg_type = max77843_muic_get_cable_type(info,
   MAX77843_CABLE_GROUP_CHG, &attached);

 dev_dbg(info->dev,
  "external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
  attached ? "attached" : "detached",
  chg_type, info->prev_chg_type);

 switch (chg_type) {
 case 128:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_USB,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_USB, attached);
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
     attached);
  break;
 case 133:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_OPEN,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_CDP,
     attached);
  break;
 case 135:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_OPEN,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
     attached);
  break;
 case 129:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_OPEN,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SLOW,
     attached);
  break;
 case 130:
  ret = max77843_muic_set_path(info,
          MAX77843_MUIC_CONTROL1_SW_OPEN,
          attached, 0);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_FAST,
     attached);
  break;
 case 132:
  gnd_type = max77843_muic_get_cable_type(info,
    MAX77843_CABLE_GROUP_ADC_GND, &attached);


  if (gnd_type == MAX77843_MUIC_GND_MHL_VB)
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
      1);
  else if (gnd_type == MAX77843_MUIC_GND_MHL)
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
      0);
  break;
 case 134:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP, attached);
  break;
 case 131:
  break;
 default:
  dev_err(info->dev,
   "failed to detect %s accessory (chg_type:0x%x)\n",
   attached ? "attached" : "detached", chg_type);

  max77843_muic_set_path(info, MAX77843_MUIC_CONTROL1_SW_OPEN,
           attached, 0);
  return -EINVAL;
 }

 return 0;
}
