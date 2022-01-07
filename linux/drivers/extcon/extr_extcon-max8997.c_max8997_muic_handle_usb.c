
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int dev; int edev; int path_usb; } ;
typedef enum max8997_muic_usb_type { ____Placeholder_max8997_muic_usb_type } max8997_muic_usb_type ;


 int EINVAL ;
 int EXTCON_CHG_USB_SDP ;
 int EXTCON_USB ;
 int EXTCON_USB_HOST ;


 int dev_err (int ,char*,...) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int max8997_muic_set_path (struct max8997_muic_info*,int ,int) ;

__attribute__((used)) static int max8997_muic_handle_usb(struct max8997_muic_info *info,
   enum max8997_muic_usb_type usb_type, bool attached)
{
 int ret = 0;

 ret = max8997_muic_set_path(info, info->path_usb, attached);
 if (ret < 0) {
  dev_err(info->dev, "failed to update muic register\n");
  return ret;
 }

 switch (usb_type) {
 case 128:
  extcon_set_state_sync(info->edev, EXTCON_USB_HOST, attached);
  break;
 case 129:
  extcon_set_state_sync(info->edev, EXTCON_USB, attached);
  extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
     attached);
  break;
 default:
  dev_err(info->dev, "failed to detect %s usb cable\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }

 return 0;
}
