
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_muic_info {int dev; int edev; int path_usb; int prev_chg_type; } ;


 int EINVAL ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_FAST ;
 int EXTCON_CHG_USB_SDP ;
 int EXTCON_CHG_USB_SLOW ;
 int EXTCON_USB ;
 int MAX14577_CABLE_GROUP_CHG ;







 int dev_dbg (int ,char*,char*,int,int ) ;
 int dev_err (int ,char*,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max14577_muic_get_cable_type (struct max14577_muic_info*,int ,int*) ;
 int max14577_muic_set_path (struct max14577_muic_info*,int ,int) ;

__attribute__((used)) static int max14577_muic_chg_handler(struct max14577_muic_info *info)
{
 int chg_type;
 bool attached;
 int ret = 0;

 chg_type = max14577_muic_get_cable_type(info,
    MAX14577_CABLE_GROUP_CHG, &attached);

 dev_dbg(info->dev,
  "external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\n",
   attached ? "attached" : "detached",
   chg_type, info->prev_chg_type);

 switch (chg_type) {
 case 128:

  ret = max14577_muic_set_path(info, info->path_usb, attached);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_USB, attached);
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
     attached);
  break;
 case 133:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_DCP,
     attached);
  break;
 case 132:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_CDP,
     attached);
  break;
 case 129:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SLOW,
     attached);
  break;
 case 130:
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_FAST,
     attached);
  break;
 case 131:
 case 134:
  break;
 default:
  dev_err(info->dev,
   "failed to detect %s accessory (chg_type:0x%x)\n",
   attached ? "attached" : "detached", chg_type);
  return -EINVAL;
 }

 return 0;
}
