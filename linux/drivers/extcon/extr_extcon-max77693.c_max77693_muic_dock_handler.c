
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_muic_info {int edev; int dev; int path_usb; } ;


 int EINVAL ;
 unsigned int EXTCON_CHG_USB_SDP ;
 unsigned int EXTCON_DISP_MHL ;
 unsigned int EXTCON_DOCK ;
 unsigned int EXTCON_USB ;
 int MAX77693_CABLE_GROUP_VBVOLT ;
 int MAX77693_CONTROL1_SW_AUDIO ;



 int dev_err (int ,char*,char*) ;
 int dev_info (int ,char*,char*,int) ;
 int dev_warn (int ,char*) ;
 int extcon_set_state_sync (int ,unsigned int,int) ;
 int max77693_muic_get_cable_type (struct max77693_muic_info*,int ,int*) ;
 int max77693_muic_set_path (struct max77693_muic_info*,int ,int) ;

__attribute__((used)) static int max77693_muic_dock_handler(struct max77693_muic_info *info,
  int cable_type, bool attached)
{
 int ret = 0;
 int vbvolt;
 bool cable_attached;
 unsigned int dock_id;

 dev_info(info->dev,
  "external connector is %s (adc:0x%02x)\n",
  attached ? "attached" : "detached", cable_type);

 switch (cable_type) {
 case 128:






  vbvolt = max77693_muic_get_cable_type(info,
    MAX77693_CABLE_GROUP_VBVOLT, &cable_attached);
  if (attached && !vbvolt) {
   dev_warn(info->dev,
    "Cannot detect external power supply\n");
   return 0;
  }
  ret = max77693_muic_set_path(info, info->path_usb, attached);
  if (ret < 0)
   return ret;

  extcon_set_state_sync(info->edev, EXTCON_DOCK, attached);
  extcon_set_state_sync(info->edev, EXTCON_DISP_MHL, attached);
  goto out;
 case 130:
  dock_id = EXTCON_DOCK;
  break;
 case 129:
  dock_id = EXTCON_DOCK;
  if (!attached) {
   extcon_set_state_sync(info->edev, EXTCON_USB, 0);
   extcon_set_state_sync(info->edev, EXTCON_CHG_USB_SDP,
      0);
  }
  break;
 default:
  dev_err(info->dev, "failed to detect %s dock device\n",
   attached ? "attached" : "detached");
  return -EINVAL;
 }


 ret = max77693_muic_set_path(info, MAX77693_CONTROL1_SW_AUDIO,
     attached);
 if (ret < 0)
  return ret;
 extcon_set_state_sync(info->edev, dock_id, attached);

out:
 return 0;
}
