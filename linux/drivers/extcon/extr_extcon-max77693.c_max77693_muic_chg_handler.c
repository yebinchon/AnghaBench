
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int dev; int edev; int path_usb; int prev_chg_type; } ;


 int EINVAL ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_FAST ;
 int EXTCON_CHG_USB_SDP ;
 int EXTCON_CHG_USB_SLOW ;
 int EXTCON_DISP_MHL ;
 int EXTCON_DOCK ;
 int EXTCON_USB ;
 int MAX77693_CABLE_GROUP_ADC ;
 int MAX77693_CABLE_GROUP_ADC_GND ;
 int MAX77693_CABLE_GROUP_CHG ;
 int dev_err (int ,char*,char*,int) ;
 int dev_info (int ,char*,char*,int,int ) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max77693_muic_get_cable_type (struct max77693_muic_info*,int ,int*) ;
 int max77693_muic_set_path (struct max77693_muic_info*,int ,int) ;

__attribute__((used)) static int max77693_muic_chg_handler(struct max77693_muic_info *info)
{
 int chg_type;
 int cable_type_gnd;
 int cable_type;
 bool attached;
 bool cable_attached;
 int ret = 0;

 chg_type = max77693_muic_get_cable_type(info,
    MAX77693_CABLE_GROUP_CHG, &attached);

 dev_info(info->dev,
  "external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
   attached ? "attached" : "detached",
   chg_type, info->prev_chg_type);

 switch (chg_type) {
 case 132:
 case 135:
 case 133:

  cable_type_gnd = max77693_muic_get_cable_type(info,
     MAX77693_CABLE_GROUP_ADC_GND,
     &cable_attached);
  switch (cable_type_gnd) {
  case 129:
  case 128:
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
      attached);
   extcon_set_state_sync(info->edev, EXTCON_DISP_MHL,
      cable_attached);
   break;
  }


  cable_type = max77693_muic_get_cable_type(info,
     MAX77693_CABLE_GROUP_ADC,
     &cable_attached);
  switch (cable_type) {
  case 131:
   extcon_set_state_sync(info->edev, EXTCON_USB,
      attached);
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
      attached);

   if (!cable_attached)
    extcon_set_state_sync(info->edev, EXTCON_DOCK,
       cable_attached);
   break;
  case 130:
   ret = max77693_muic_set_path(info, info->path_usb,
          attached);
   if (ret < 0)
    return ret;

   extcon_set_state_sync(info->edev, EXTCON_DOCK,
      attached);
   extcon_set_state_sync(info->edev, EXTCON_DISP_MHL,
      attached);
   break;
  }


  switch (chg_type) {
  case 133:
   break;
  case 132:

   ret = max77693_muic_set_path(info, info->path_usb,
          attached);
   if (ret < 0)
    return ret;

   extcon_set_state_sync(info->edev, EXTCON_USB,
      attached);
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
      attached);
   break;
  case 135:

   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
      attached);
   break;
  }
  break;
 case 134:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_CDP,
     attached);
  break;
 case 137:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SLOW,
     attached);
  break;
 case 138:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_FAST,
     attached);
  break;
 case 136:
  break;
 default:
  dev_err(info->dev,
   "failed to detect %s accessory (chg_type:0x%x)\n",
   attached ? "attached" : "detached", chg_type);
  return -EINVAL;
 }

 return 0;
}
